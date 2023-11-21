
package com.pot.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pot.contracts.UserLogin;
import com.pot.model.User;
import com.pot.service.IUserService;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	private IUserService userService;

	static Boolean isAdmin = false;

	@GetMapping("/")
	public String indexPage(Model model) {
		model.addAttribute("login", new UserLogin());
		return "index";
	}

	@PostMapping("/home")
	public String homePage() {
		return "home";
	}

	@PostMapping("/")
	public String loginPage(@ModelAttribute("login") UserLogin login, RedirectAttributes attrs,
			HttpServletRequest request, HttpServletResponse response, Map<String, Object> map) {
		if (userService.login(login)) {
			map.put("isAdmin", userService.isAdmin(login.getEmail()));
			isAdmin = userService.isAdmin(login.getEmail());
			attrs.addFlashAttribute("resultMsg", "User Login Successfull");
			if (isAdmin) {
				return "forward:/users";
			}
			return "forward:/home";
		} else {
			attrs.addFlashAttribute("resultMsg", "User Login Failed");
			return "redirect:/"; // return "index"; //return "redirect://";
		}
	}

	@GetMapping("/add")
	public String registerPage(@ModelAttribute("user") User user) {
		return "add_user";
	}

	@PostMapping("/add")
	public String registerPagePost(@ModelAttribute("user") User user, RedirectAttributes attrs) {
		Boolean isReg = userService.regUser(user);

		if (isReg) {
			attrs.addFlashAttribute("resultMsg", "User Registration Successfull");
		} else {
			attrs.addFlashAttribute("resultMsg", "User Registration Failed");
		}
		return "redirect:users";
	}

	@GetMapping("/users")
	public String usersPage(Map<String, Object> map) {
		List<User> users = userService.getAllUsers();
		map.put("isAdmin", isAdmin);
		map.put("users", users);
		return "users";
	}

	@PostMapping("/users")
	public String usersPostPage(Map<String, Object> map) {
		List<User> users = userService.getAllUsers();
		map.put("isAdmin", isAdmin);
		map.put("users", users);
		return "users";
	}

	@GetMapping("/edit_user")
	public String showEditEmployeeFormPage(@RequestParam("uid") int id, @ModelAttribute("user") User user) {
		// use serivce
		User user2 = userService.getEmployeeById(id);
		BeanUtils.copyProperties(user2, user);
		// return lvn
		return "edit_user";
	}

	@PostMapping("/edit_user")
	public String editEmployee(RedirectAttributes attrs, @ModelAttribute("user") User user) {
		// use service
		boolean status = userService.regUser(user);
		// keep results in model attributes
		if (status) {
			attrs.addFlashAttribute("resultMsg", "User Details Updated");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to Update User Details");
		}
		// return LVN
		return "redirect:users";
	}

	@GetMapping("/delete_user")
	public String deleteEmployee(@RequestParam("uid") int uid, RedirectAttributes attrs) {
		// use service
		Boolean status = userService.deleteEmployeeByEno(uid);
		// keep results in model attributes
		if (status) {
			attrs.addFlashAttribute("resultMsg", "User Deleted Successfully");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to Delete User");
		}
		// return LVN
		return "redirect:users";
	}

	@GetMapping("/about")
	private String aboutPage() {
		return "about";
	}
	
	@GetMapping("/adminAbout")
	private String adminAboutPage() {
//		if (isAdmin) {
//			return "adminAbout";
//		}
		return "adminAbout";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, RedirectAttributes attrs) {
		boolean isSecure = false;
		String contextPath = null;
		if (request != null) {
			HttpSession session = request.getSession(false);
			if (session != null) {
				session.invalidate();
			}
			isSecure = request.isSecure();
			contextPath = request.getContextPath();
		} //
//		SecurityContext context = SecurityContextHolder.getContext(); //
//		SecurityContextHolder.clearContext();
//		context.setAuthentication(null);
		if (response != null) {
			Cookie cookie = new Cookie("JSESSIONID", null);
			String cookiePath = StringUtils.hasText(contextPath) ? contextPath : "/";
			cookie.setPath(cookiePath);
			cookie.setMaxAge(0);
			cookie.setSecure(isSecure);
			response.addCookie(cookie);
		}
		response.setStatus(307); // this makes the redirection keep your requesting method as is.
		response.addHeader("Location", "http://localhost:8080/");
		attrs.addFlashAttribute("resultMsg", "Logout Successfull");
		return "redirect:/";
	}

}