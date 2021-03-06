package com.copaair.connectmiles.upgradecalculator.utils;

import com.liferay.portal.PortalException;
import com.liferay.portal.SystemException;
import com.liferay.portal.kernel.portlet.DefaultConfigurationAction;
import com.liferay.portal.kernel.util.GetterUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.portlet.PortletPreferencesFactoryUtil;

import javax.portlet.PortletPreferences;
import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletConfig;

public class ConfigurationActionImpl extends DefaultConfigurationAction {
	@Override
	public void processAction(PortletConfig portletConfig,
			ActionRequest actionRequest, ActionResponse actionResponse)
			throws Exception {

		super.processAction(portletConfig, actionRequest, actionResponse);

		String dateFormat = ParamUtil
				.getString(actionRequest, "prefdateformat");
		System.out.println("====" + dateFormat);
		PortletPreferences preferences = actionRequest.getPreferences();
		String portletResource = ParamUtil.getString(actionRequest,
				"portletResource");
		if (Validator.isNotNull(portletResource) && (preferences == null)) {
			try {
				preferences = PortletPreferencesFactoryUtil.getPortletSetup(
						actionRequest, portletResource);
			} catch (PortalException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SystemException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// Add any preference processing here.
		}
	}
}