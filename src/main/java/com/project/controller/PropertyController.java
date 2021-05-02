package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.PropertyImageVO;
import com.project.model.PropertyVO;
import com.project.service.AreaService;
import com.project.service.CategoryService;
import com.project.service.CityService;
import com.project.service.ConstructionStatusService;
import com.project.service.PropertyService;
import com.project.service.StateService;
import com.project.service.SubCategoryService;

@Controller
public class PropertyController {

	@Autowired
	SubCategoryService subcategoryService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	ConstructionStatusService constructionStatusService;

	@Autowired
	AreaService areaService;

	@Autowired
	CityService cityService;

	@Autowired
	StateService stateService;

	@Autowired
	PropertyService propertyService;

	@GetMapping(value = "admin/addProperty")
	public ModelAndView addProperty() {

		List<PropertyVO> categoryList = this.categoryService.searchCategory();
		List<PropertyVO> subCategoryList = this.subcategoryService.searchSubCategory();
		List<PropertyVO> constructionStatusList = this.constructionStatusService.searchConstructionStatus();
		List<PropertyVO> stateList = this.stateService.searchState();
		List<PropertyVO> cityList = this.cityService.searchCity();
		List<PropertyVO> areaList = this.areaService.searchArea();

		return new ModelAndView("admin/addProperty", "propertyVO", new PropertyVO())
				.addObject("categoryList", categoryList).addObject("subCategoryList", subCategoryList)
				.addObject("constructionStatusList", constructionStatusList).addObject("stateList", stateList)
				.addObject("cityList", cityList).addObject("areaList", areaList);

	}

	@GetMapping(value = "admin/viewProperty")
	public ModelAndView viewProperty() {

		List<PropertyVO> propertyList = this.propertyService.searchProperty();
		return new ModelAndView("admin/viewProperty", "propertyList", propertyList);

	}

	@PostMapping(value = "admin/saveProperty")
	public ModelAndView saveProperty(@ModelAttribute PropertyVO propertyVO, @RequestParam List<MultipartFile> file,
			HttpSession session) {

		this.propertyService.saveProperty(propertyVO);

		if (file != null && file.size() > 0) {

			for (int index = 0; index < file.size(); index++) {

				PropertyImageVO productImageVO = new PropertyImageVO();
				productImageVO.setPropertyVO(propertyVO);

				String path = session.getServletContext().getRealPath("/");
				String filePath = path + "documents\\propertyImage\\";

				String fileName = file.get(index).getOriginalFilename();

				try {
					byte barr[] = file.get(index).getBytes();

					BufferedOutputStream bout = new BufferedOutputStream(
							new FileOutputStream(filePath + "/" + fileName));

					bout.write(barr);
					bout.flush();
					bout.close();

				} catch (Exception e) {
					e.printStackTrace();
				}

				productImageVO.setFileName(fileName);
				productImageVO.setFilePath(filePath);

				// Insert Here

				this.propertyService.savePropertyImage(productImageVO);

			}
		}
		return new ModelAndView("redirect:addProperty");
	}

	@GetMapping(value = "admin/deleteProperty")
	public ModelAndView deleteProperty(@ModelAttribute PropertyVO propertyVO, @RequestParam int id) {

		propertyVO.setId(id);

		System.out.println(propertyVO.getId());

		List propertyList = this.propertyService.deleteProperty(propertyVO);

		PropertyVO propertyVO2 = new PropertyVO();
		propertyVO2 = (PropertyVO) propertyList.get(0);
		propertyVO2.setStatus(false);
		propertyService.saveProperty(propertyVO2);

		return new ModelAndView("redirect:viewProperty");
	}

	@GetMapping(value = "admin/editProperty")
	public ModelAndView editProperty(@ModelAttribute PropertyVO propertyVO, @RequestParam int id) {

		propertyVO.setId(id);

		System.out.println(propertyVO.getId());

		List propertyList = this.propertyService.deleteProperty(propertyVO);

		List<PropertyVO> categoryList = this.categoryService.searchCategory();
		List<PropertyVO> subCategoryList = this.subcategoryService.searchSubCategory();
		List<PropertyVO> constructionStatusList = this.constructionStatusService.searchConstructionStatus();
		List<PropertyVO> stateList = this.stateService.searchState();
		List<PropertyVO> cityList = this.cityService.searchCity();
		List<PropertyVO> areaList = this.areaService.searchArea();

		return new ModelAndView("admin/addProperty", "propertyVO", propertyList.get(0))
				.addObject("stateList", stateList).addObject("cityList", cityList).addObject("areaList", areaList)
				.addObject("constructionStatusList", constructionStatusList)
				.addObject("subCategoryList", subCategoryList).addObject("categoryList", categoryList);
	}

	@GetMapping(value = "admin/searchPropertyImage")
	public ModelAndView searchPropertyImage(@RequestParam int id) {

		List propertyList = this.propertyService.searchProductImage(id);

		return new ModelAndView("admin/viewPropertyImage", "propertyList", propertyList);
	}
	
	
	@GetMapping(value = "/user/propertyDetail")
	public ModelAndView userIndex() {

		return new ModelAndView("user/propertyDetail");
	}
	
	@GetMapping(value = "/user/homeLoan")
	public ModelAndView homeLoan() {

		return new ModelAndView("user/homeLoan");
	}
	
}
