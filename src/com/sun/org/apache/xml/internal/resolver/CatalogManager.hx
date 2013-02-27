package com.sun.org.apache.xml.internal.resolver;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// CatalogManager.java - Access CatalogManager.properties
/*
* Copyright 2001-2004 The Apache Software Foundation or its licensors,
* as applicable.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class CatalogManager
{
	/** The manager's debug object. Used for printing debugging messages.
	*
	* <p>This field is public so that objects that have access to this
	* CatalogManager can use this debug object.</p>
	*/
	public var debug : com.sun.org.apache.xml.internal.resolver.helpers.Debug;
	
	/** Constructor. */
	@:overload public function new() : Void;
	
	/** Constructor that specifies an explicit property file. */
	@:overload public function new(propertyFile : String) : Void;
	
	/** Set the bootstrap resolver.*/
	@:overload public function setBootstrapResolver(resolver : com.sun.org.apache.xml.internal.resolver.helpers.BootstrapResolver) : Void;
	
	/** Get the bootstrap resolver.*/
	@:overload public function getBootstrapResolver() : com.sun.org.apache.xml.internal.resolver.helpers.BootstrapResolver;
	
	/**
	* Allow access to the static CatalogManager
	*/
	@:overload public static function getStaticManager() : CatalogManager;
	
	/**
	* How are missing properties handled?
	*
	* <p>If true, missing or unreadable property files will
	* not be reported. Otherwise, a message will be sent to System.err.
	* </p>
	*/
	@:overload public function getIgnoreMissingProperties() : Bool;
	
	/**
	* How should missing properties be handled?
	*
	* <p>If ignore is true, missing or unreadable property files will
	* not be reported. Otherwise, a message will be sent to System.err.
	* </p>
	*/
	@:overload public function setIgnoreMissingProperties(ignore : Bool) : Void;
	
	/**
	* How are missing properties handled?
	*
	* <p>If ignore is true, missing or unreadable property files will
	* not be reported. Otherwise, a message will be sent to System.err.
	* </p>
	*
	* @deprecated No longer static; use get/set methods.
	*/
	@:overload public function ignoreMissingProperties(ignore : Bool) : Void;
	
	/**
	* What is the current verbosity?
	*/
	@:overload public function getVerbosity() : Int;
	
	/**
	* Set the current verbosity.
	*/
	@:overload public function setVerbosity(verbosity : Int) : Void;
	
	/**
	* What is the current verbosity?
	*
	* @deprecated No longer static; use get/set methods.
	*/
	@:overload public function verbosity() : Int;
	
	/**
	* Get the relativeCatalogs setting.
	*
	* <p>This property is used when the catalogFiles property is
	* interrogated. If true, then relative catalog entry file names
	* are returned. If false, relative catalog entry file names are
	* made absolute with respect to the properties file before returning
	* them.</p>
	*
	* <p>This property <emph>only applies</emph> when the catalog files
	* come from a properties file. If they come from a system property or
	* the default list, they are never considered relative. (What would
	* they be relative to?)</p>
	*
	* <p>In the properties, a value of 'yes', 'true', or '1' is considered
	* true, anything else is false.</p>
	*
	* @return The relativeCatalogs setting from the propertyFile or the
	* defaultRelativeCatalogs.
	*/
	@:overload public function getRelativeCatalogs() : Bool;
	
	/**
	* Set the relativeCatalogs setting.
	*
	* @see #getRelativeCatalogs()
	*/
	@:overload public function setRelativeCatalogs(relative : Bool) : Void;
	
	/**
	* Get the relativeCatalogs setting.
	*
	* @deprecated No longer static; use get/set methods.
	*/
	@:overload public function relativeCatalogs() : Bool;
	
	/**
	* Return the current list of catalog files.
	*
	* @return A vector of the catalog file names or null if no catalogs
	* are available in the properties.
	*/
	@:overload public function getCatalogFiles() : java.util.Vector<Dynamic>;
	
	/**
	* Set the list of catalog files.
	*/
	@:overload public function setCatalogFiles(fileList : String) : Void;
	
	/**
	* Return the current list of catalog files.
	*
	* @return A vector of the catalog file names or null if no catalogs
	* are available in the properties.
	*
	* @deprecated No longer static; use get/set methods.
	*/
	@:overload public function catalogFiles() : java.util.Vector<Dynamic>;
	
	/**
	* Return the current prefer public setting.
	*
	* @return True if public identifiers are preferred.
	*/
	@:overload public function getPreferPublic() : Bool;
	
	/**
	* Set the prefer public setting.
	*/
	@:overload public function setPreferPublic(preferPublic : Bool) : Void;
	
	/**
	* Return the current prefer public setting.
	*
	* @return True if public identifiers are preferred.
	*
	* @deprecated No longer static; use get/set methods.
	*/
	@:overload public function preferPublic() : Bool;
	
	/**
	* Get the current use static catalog setting.
	*/
	@:overload public function getUseStaticCatalog() : Bool;
	
	/**
	* Set the use static catalog setting.
	*/
	@:overload public function setUseStaticCatalog(useStatic : Bool) : Void;
	
	/**
	* Get the current use static catalog setting.
	*
	* @deprecated No longer static; use get/set methods.
	*/
	@:overload public function staticCatalog() : Bool;
	
	/**
	* Get a new catalog instance.
	*
	* This method always returns a new instance of the underlying catalog class.
	*/
	@:overload public function getPrivateCatalog() : com.sun.org.apache.xml.internal.resolver.Catalog;
	
	/**
	* Get a catalog instance.
	*
	* If this manager uses static catalogs, the same static catalog will
	* always be returned. Otherwise a new catalog will be returned.
	*/
	@:overload public function getCatalog() : com.sun.org.apache.xml.internal.resolver.Catalog;
	
	/**
	* <p>Obtain the oasisXMLCatalogPI setting from the properties.</p>
	*
	* <p>In the properties, a value of 'yes', 'true', or '1' is considered
	* true, anything else is false.</p>
	*
	* @return The oasisXMLCatalogPI setting from the propertyFile or the
	* defaultOasisXMLCatalogPI.
	*/
	@:overload public function queryAllowOasisXMLCatalogPI() : Bool;
	
	/**
	* Get the current XML Catalog PI setting.
	*/
	@:overload public function getAllowOasisXMLCatalogPI() : Bool;
	
	@:overload public function useServicesMechanism() : Bool;
	
	/**
	* Set the XML Catalog PI setting
	*/
	@:overload public function setAllowOasisXMLCatalogPI(allowPI : Bool) : Void;
	
	/**
	* Get the current XML Catalog PI setting.
	*
	* @deprecated No longer static; use get/set methods.
	*/
	@:overload public function allowOasisXMLCatalogPI() : Bool;
	
	/**
	* Obtain the Catalog class name setting from the properties.
	*
	*/
	@:overload public function queryCatalogClassName() : String;
	
	/**
	* Get the current Catalog class name.
	*/
	@:overload public function getCatalogClassName() : String;
	
	/**
	* Set the Catalog class name.
	*/
	@:overload public function setCatalogClassName(className : String) : Void;
	
	/**
	* Get the current Catalog class name.
	*
	* @deprecated No longer static; use get/set methods.
	*/
	@:overload public function catalogClassName() : String;
	
	
}
