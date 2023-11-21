package com.pot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pot.model.Building;
import com.pot.model.Instruments;
import com.pot.model.Material;
import com.pot.service.IBuildingService;
import com.pot.service.IInstrumentService;
import com.pot.service.IMaterialService;

@Controller
public class PoTController {
	@Autowired
	private IMaterialService materialService;

	@Autowired
	private IInstrumentService instrumentService;

	@Autowired
	private IBuildingService buildingService;

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
		Boolean isBuildingDetailsAdded = buildingService.addBuilding(building);
		if (isBuildingDetailsAdded) {
			attrs.addFlashAttribute("resultMsg", "Building Details Added Successfully");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to Add Building Details");
		}
		return "redirect:/";
	}

	@GetMapping("/add-material")
	private String addMaterialPage(@ModelAttribute("material") Material material, Map<String, Object> map) { 
		map.put("buildings", buildingService.getAllBuildings());
//		Material material2 = materialService.getMaterialByID(materialId);
//		BeanUtils.copyProperties(material2, material);
//		System.out.println(materialId);
		return "add-material-form";
	}

	@PostMapping("/add-material")
	private String addMaterial(@ModelAttribute("material") Material material, RedirectAttributes attrs) {
		material.setBuilding(buildingService.getBuildingByID(material.getBuildingId()));
//		System.out.println(buildingService.getBuildingByID(material.getBuildingId()));
//		System.out.println(material);
//		Integer status2 = buildingService.updateMaterialByBuildingID(material, material.getBuildingId());
		Boolean status = materialService.addMaterial(material);

		if (status) {
			attrs.addFlashAttribute("resultMsg", "Material has been added successfully");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to add Material");
		}
		return "redirect:/materials";
	}

	@GetMapping("/materials")
	private String materialsPage(Map<String, Object> map) {
		map.put("materials", materialService.getAllMaterials().get(0));
		return "materials";
	}

	@PostMapping("/materials")
	private String materialsUpdatePage(Map<String, Object> map, @ModelAttribute("material") Material material,
			RedirectAttributes attrs) {
		map.put("materials", materialService.getAllMaterials().get(0));
		Boolean status = materialService.addMaterial(material);
		if (status) {
			attrs.addFlashAttribute("resultMsg", "Material has been Updated Successfully");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to Update Material");
		}
		return "redirect:/materials";
	}

	@GetMapping("/add-instrument")
	private String addInstrumentPage(@ModelAttribute("instruments") Instruments instruments) {
		return "add-instrument-form";
	}

	@PostMapping("/add-instrument")
	private String addMaterial(@ModelAttribute("material") Instruments instruments, RedirectAttributes attrs) {
		Boolean status = instrumentService.addInstrument(instruments);
		if (status) {
			attrs.addFlashAttribute("resultMsg", "Instrumnets has been added successfully");
		} else {
			attrs.addFlashAttribute("resultMsg", "Unable to add Instrumnets");
		}
		return "redirect:/materials";
	}

	@GetMapping("/about")
	private String aboutPage() {
		return "about";
	}
}