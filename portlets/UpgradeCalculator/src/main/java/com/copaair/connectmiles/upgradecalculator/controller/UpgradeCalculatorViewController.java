package com.copaair.connectmiles.upgradecalculator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("VIEW")
public class UpgradeCalculatorViewController {

	public UpgradeCalculatorViewController() {
	}
	@RequestMapping
	protected String defaultView() {
		return "view";
	}

}