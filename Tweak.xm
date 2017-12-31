%hook SBIconController
-(id)appIconForceTouchController:(id)arg1 applicationShortcutWidgetBundleIdentifierForGestureRecognizer:(id)arg2 {
	return nil;
}
%end

%hook SBUIAppIconForceTouchController
-(id)_widgetViewControllerForDataProvider:(id)arg1 {
	return nil;
}
%end