package com.pot.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pot.model.Building;
import com.pot.model.Instruments;
import com.pot.model.Machines;
import com.pot.model.ManPower;
import com.pot.model.Material;
import com.pot.service.IBuildingService;
import com.pot.service.IInstrumentService;
import com.pot.service.IMachineService;
import com.pot.service.IManPowerService;
import com.pot.service.IMaterialService;
import com.pot.service.IUserService;

@Controller
public class PoTController {
	@Autowired
	private IMaterialService materialService;

	@Autowired
	private IInstrumentService instrumentService;

	@Autowired
	private IBuildingService buildingService;

	@Autowired
	private IUserService userService;

	@Autowired
	private IManPowerService manPowerService;

	@Autowired
	private IMachineService machineService;

//	@GetMapping("/")
//	private String homePage() {
//		return "home";
//	}

	@GetMapping("/building")
	private String addBuildingPage(@ModelAttribute("building") Building building) {
		return "add-building-form";
	}

	@PostMapping("/building")
	private String addBuildingPostPage(@ModelAttribute("building") Building building, RedirectAttributes attrs) {
		building.setUser(UserController.currentLoggedUser);
		Boolean isBuildingDetailsAdded = buildingService.addBuilding(building);
		if (isBuildingDetailsAdded) {
			attrs.addFlashAttribute("resultMsg", "Building Details Added Successfully");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to Add Building Details");
		}
		return "redirect:/buildings";
	}

	@GetMapping("/buildings")
	private String buildingsPage(@ModelAttribute("building") Building building, Map<String, Object> map) {
		map.put("buildings", buildingService.getAllBuildingsByUserID(UserController.currentLoggedUser.getUid()));
		return "buildings";
	}

	@PostMapping("/buildings")
	private String buildingsPostPage(@ModelAttribute("building") Building building, RedirectAttributes attrs,
			Map<String, Object> map) {
//		building.setUser(UserController.currentLoggedUser);
		Building building2 = buildingService
				.getByBuildingNameAndUser(building.getBuildingName(), UserController.currentLoggedUser).get(0);
		BeanUtils.copyProperties(building, building2, "buildingId", "user", "createdDateAndTime");
		Boolean isBuildingDetailsAdded = buildingService.addBuilding(building2);
		if (isBuildingDetailsAdded) {
			attrs.addFlashAttribute("resultMsg", "Building Details Updated Successfully");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to Update Building Details");
		}
		return "redirect:/buildings";
	}

	@GetMapping("/materials")
	private String addMaterialPage(@ModelAttribute("material") Material material,
			@RequestParam("buildingId") Integer buildingId, Map<String, Object> map) {
		Optional<List<Material>> material2 = materialService.getMaterialByBuildingID(buildingId);
		if (material2.isPresent() && material2.get().size() != 0 && material2.get().get(0) != null) {
			map.put("materials", material2.get().get(0));
			System.out.println(material);
			System.out.println(material2.get().get(0));
			return "materials";
		}
		return "add-material-form";
	}

	@PostMapping("/materials")
	private String addMaterial(@ModelAttribute("material") Material material,
			@RequestParam("buildingId") Integer buildingId, RedirectAttributes attrs) {
		material.setBuilding(buildingService.getBuildingByID(buildingId));
		Boolean status = materialService.addMaterial(material);

		if (status) {
			attrs.addFlashAttribute("resultMsg", "Material has been added/updated successfully");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to add Material");
		}
		return "redirect:/buildings";
	}

	@GetMapping("/instruments")
	private String addInstrumentPage(@ModelAttribute("instruments") Instruments instruments,
			@RequestParam("buildingId") Integer buildingId, Map<String, Object> map) {
		Optional<List<Instruments>> instruments2 = instrumentService.getInstrumentByBuildingID(buildingId);
		if (instruments2.isPresent() && instruments2.get().size() != 0 && instruments2.get().get(0) != null) {
			map.put("instruments", instruments2.get().get(0));
//			return "instrument-form";
		}
		return "instrument-form";
	}

	@PostMapping("/instruments")
	private String addInstrument(@ModelAttribute("instruments") Instruments instruments,
			@RequestParam("buildingId") Integer buildingId, RedirectAttributes attrs) {
		instruments.setBuilding(buildingService.getBuildingByID(buildingId));
		Optional<List<Instruments>> instruments2 = instrumentService.getInstrumentByBuildingID(buildingId);
		Boolean status = false;
		if (instruments2.isPresent() && instruments2.get().size() != 0 && instruments2.get().get(0) != null) {
			BeanUtils.copyProperties(instruments, instruments2.get().get(0), "instrId");
			status = instrumentService.addInstrument(instruments2.get().get(0));
		} else {
			status = instrumentService.addInstrument(instruments);
		}

		if (status) {
			attrs.addFlashAttribute("resultMsg", "Instruments has been added/updated successfully");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to add/update Instruments");
		}
		return "redirect:/buildings";
	}

	@GetMapping("/manpower")
	private String addManPowerPage(@ModelAttribute("manpower") ManPower manPower,
			@RequestParam("buildingId") Integer buildingId, Map<String, Object> map) {
		Optional<List<ManPower>> manPower2 = manPowerService.getManPowerByBuildingID(buildingId);
		if (manPower2.isPresent() && manPower2.get().size() != 0 && manPower2.get().get(0) != null) {
			map.put("manpower", manPower2.get().get(0));
			return "manpower-form";
		}
		return "manpower-form";
	}

	@PostMapping("/manpower")
	private String addManPower(@ModelAttribute("manpower") ManPower manPower,
			@RequestParam("buildingId") Integer buildingId, RedirectAttributes attrs) {
		manPower.setBuilding(buildingService.getBuildingByID(buildingId));
		Optional<List<ManPower>> manPower2 = manPowerService.getManPowerByBuildingID(buildingId);
		Boolean status = false;
		if (manPower2.isPresent() && manPower2.get().size() != 0 && manPower2.get().get(0) != null) {
			BeanUtils.copyProperties(manPower, manPower2.get().get(0), "manPowerId");
			status = manPowerService.addManPower(manPower2.get().get(0));
		} else {
			status = manPowerService.addManPower(manPower);
		}

		if (status) {
			attrs.addFlashAttribute("resultMsg", "Manpower has been added/updated successfully");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to add/update Manpower");
		}
		return "redirect:/buildings";
	}

	@GetMapping("/machines")
	private String addMachinePage(@ModelAttribute("machines") Machines machines,
			@RequestParam("buildingId") Integer buildingId, Map<String, Object> map) {
		Optional<List<Machines>> machines2 = machineService.getMachineByBuildingID(buildingId);
		if (machines2.isPresent() && machines2.get().size() != 0 && machines2.get().get(0) != null) {
			map.put("machines", machines2.get().get(0));
			return "machine-form";
		}
		return "machine-form";
	}

	@PostMapping("/machines")
	private String addMachine(@ModelAttribute("machines") Machines machines,
			@RequestParam("buildingId") Integer buildingId, RedirectAttributes attrs) {
		machines.setBuilding(buildingService.getBuildingByID(buildingId));
		Optional<List<Machines>> machines2 = machineService.getMachineByBuildingID(buildingId);
		Boolean status = false;
		if (machines2.isPresent() && machines2.get().size() != 0 && machines2.get().get(0) != null) {
			BeanUtils.copyProperties(machines, machines2.get().get(0), "machineId");
			status = machineService.addMachine(machines2.get().get(0));
		} else {
			status = machineService.addMachine(machines);
		}

		if (status) {
			attrs.addFlashAttribute("resultMsg", "Machines has been added/updated successfully");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to add/update Machines");
		}
		return "redirect:/buildings";
	}
}