
			component {
				// Module Properties
				this.title              = "uime";
				this.author             = "";
				this.webURL             = "";
				this.description        = "";
				this.version            = "1.0.0";
				// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
				this.viewParentLookup   = true;
				// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
				this.layoutParentLookup = true;
				// Module Entry Point
				this.entryPoint         = "uime";
				// Inherit Entry Point
				this.inheritEntryPoint  = false;
				// Model Namespace
				this.modelNamespace     = "uime";
				// CF Mapping
				this.cfmapping          = "uime";
				// Auto-map models
				this.autoMapModels      = true;
				// Module Dependencies
				this.dependencies       = [];

				this.restarts = 0;

				/**
				 * Configure the module
				 */
				function configure(){
					// parent settings
					parentSettings = {};

					// module settings - stored in modules.name.settings
					settings = {};

					// Layout Settings
					layoutSettings = { defaultLayout : "" };

					// Custom Declared Points
					interceptorSettings = { customInterceptionPoints : [] };

					// Custom Declared Interceptors
					interceptors = [];
				}

				/**
				 * Fired when the module is registered and activated.
				 */
				function onLoad(){
				}

				/**
				 * Fired when the module is unregistered and unloaded
				 */
				function onUnload(){
				}
			}
