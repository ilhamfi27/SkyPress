CKEDITOR.editorConfig = function (config) {
  // ... other configuration ...

  config.toolbar_mini = [
    ["Bold",  "Italic",  "Underline",  "Strike",  "-",  "Subscript",  "Superscript"],
  ];
  config.toolbar = "simple";
 	
 	config.fontSize_style = {
    element: 				'p',
    styles: 				{ 'font-size': '#(20)' },
    overrides: 			[{ element: 'font', attributes: { 'size': null } }]
  }; 
  config.font_style = {
    element:        'p',
    styles:         { 'font-family': '#(Arial)' },
    overrides:      [ { element: 'font', attributes: { 'face': null } } ]
	};
  
  // ... rest of the original config.js  ...
}