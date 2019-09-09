"use strict";

var meta = require.main.require('./src/meta');
var db = require.main.require('./src/database');

var theme = {};
var themeMaterialSkin = '';

function renderHomePage(req, resp) {
	resp.render('homepage', { isDevelop: process.env.NODE_ENV === 'development' });
}

theme.init = function (params, callback) {
	params.router.get('/admin/plugins/material', params.middleware.admin.buildHeader, renderAdmin);
	params.router.get('/api/admin/plugins/material', renderAdmin);
	params.router.get('/custom', params.middleware.buildHeader, renderHomePage);
	params.router.get('/api/custom', renderHomePage);

	callback();
};

theme.addAdminNavigation = function (header, callback) {
	header.plugins.push({
		route: '/plugins/material',
		icon: 'fa-paint-brush',
		name: 'Material Design Theme'
	});

	callback(null, header);
};

theme.getConfig = function (config, callback) {
	meta.settings.get('material', function (err, settings) {
		config.menuInHeader = settings.menuInHeader === 'on';
		config.removeCategoriesAnimation = settings.removeCategoriesAnimation === 'on';
		config.subCategoriesAsCards = settings.subCategoriesAsCards === 'on';
		config.categoriesAsList = settings.categoriesAsList === 'on';
		config.listSubcategories = settings.listSubcategories === 'on';
		config.selectedSkin = themeMaterialSkin || settings.skinOption || 'default';
		config.bootswatchSkin = 'default';

		callback(null, config);
	});
};

theme.customSettings = function (data, callback) {
	var availableSkins = [{
		name: 'Default',
		value: 'default'
	}, {
		name: 'Dark',
		value: 'dark'
	}];

	var options = '';
	var skinSelected;
	availableSkins.forEach(function (skin) {
		skinSelected = (data.settings.themeMaterialSkin === skin.value) ? 'selected' : '';
		options = options + '<option value="' + skin.value + '" ' + skinSelected + '>' + skin.name + '</option>';
	});

	data.customSettings.push({
		title: 'Select skin for theme',
		content: '<div class="form-group fg-line"><div class="select"><select data-property="themeMaterialSkin" class="form-control"><option value="">None</option>' + options + '</select></div></div>'
	});

	callback(null, data);
};

theme.saveSettings = function (data, callback) {
	db.setObjectField('user:' + data.uid + ':settings', 'themeMaterialSkin', data.settings.themeMaterialSkin, callback);
};

theme.getSettings = function (data, callback) {
	themeMaterialSkin = data.settings.themeMaterialSkin;
	callback(null, data);
};

theme.defineWidgetAreas = function(areas, callback) {
	areas = areas.concat([
		{
			name: "Categories Sidebar",
			template: "categories.tpl",
			location: "sidebar"
		},
		{
			name: "Category Sidebar",
			template: "category.tpl",
			location: "sidebar"
		},
		{
			name: "Topic Sidebar",
			template: "topic.tpl",
			location: "sidebar"
		},
		{
			name: "Categories Header",
			template: "categories.tpl",
			location: "header"
		},
		{
			name: "Category Header",
			template: "category.tpl",
			location: "header"
		},
		{
			name: "Topic Header",
			template: "topic.tpl",
			location: "header"
		},
		{
			name: "Categories Footer",
			template: "categories.tpl",
			location: "footer"
		},
		{
			name: "Category Footer",
			template: "category.tpl",
			location: "footer"
		},
		{
			name: "Topic Footer",
			template: "topic.tpl",
			location: "footer"
		}
	]);

	callback(null, areas);
};

function renderAdmin(req, res, next) {
	res.render('admin/plugins/material', {});
}

module.exports = theme;
