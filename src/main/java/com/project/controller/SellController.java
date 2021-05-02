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
import com.project.model.SellPropertyImageVO;
import com.project.model.SellVO;
import com.project.service.AreaService;
import com.project.service.CategoryService;
import com.project.service.CityService;
import com.project.service.ConstructionStatusService;
import com.project.service.SellService;
import com.project.service.StateService;
import com.project.service.SubCategoryService;

@Controller
public class SellController {

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
	SellService sellService;

	@GetMapping(value = "user/loadSell")
	public ModelAndView loadSell() {
		
		List<SellVO> categoryList = this.categoryService.searchCategory();
		List<SellVO> subCategoryList = this.subcategoryService.searchSubCategory();
		List<SellVO> constructionStatusList = this.constructionStatusService.searchConstructionStatus();
		List<SellVO> stateList = this.stateService.searchState();
		List<SellVO> cityList = this.cityService.searchCity();
		List<SellVO> areaList = this.areaService.searchArea();

		return new ModelAndView("user/sell","sellVO", new SellVO()).addObject("categoryList", categoryList).addObject("subCategoryList", subCategoryList)
				.addObject("constructionStatusList", constructionStatusList).addObject("stateList", stateList)
				.addObject("cityList", cityList).addObject("areaList", areaList);
	}
	
	@PostMapping(value = "user/saveSellProperty")
	public ModelAndView saveSellProperty(@ModelAttribute SellVO sellVO, @RequestParam List<MultipartFile> file,
			HttpSession session) {

		this.sellService.saveSellProperty(sellVO);

		if (file != null && file.size() > 0) {

			for (int index = 0; index < file.size(); index++) {

				SellPropertyImageVO sellPropertyImageVO = new SellPropertyImageVO();
				sellPropertyImageVO.setSellVO(sellVO);

				String path = session.getServletContext().getRealPath("/");
				String filePath = path + "documents\\sellPropertyImage\\";

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

				sellPropertyImageVO.setFileName(fileName);
				sellPropertyImageVO.setFilePath(filePath);

				// Insert Here

				this.sellService.saveSellPropertyImage(sellPropertyImageVO);

			}
		}
		return new ModelAndView("redirect:/user/loadSell");
	}
}
