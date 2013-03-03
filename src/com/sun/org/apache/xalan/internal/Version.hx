package com.sun.org.apache.xalan.internal;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: Version.java,v 1.1.2.1 2005/08/01 02:11:19 jeffsuttor Exp $
*/
/**
* Administrative class to keep track of the version number of
* the Xalan release.
* <P>This class implements the upcoming standard of having
* org.apache.project-name.Version.getVersion() be a standard way
* to get version information.  This class will replace the older
* com.sun.org.apache.xalan.internal.processor.Version class.</P>
* <P>See also: com/sun/org/apache/xalan/internal/res/XSLTInfo.properties for
* information about the version of the XSLT spec we support.</P>
* @xsl.usage general
*/
extern class Version
{
	/**
	* Get the basic version string for the current Xalan release.
	* Version String formatted like
	* <CODE>"<B>Xalan</B> <B>Java</B> v.r[.dd| <B>D</B>nn]"</CODE>.
	*
	* Futurework: have this read version info from jar manifest.
	*
	* @return String denoting our current version
	*/
	@:overload @:public @:static public static function getVersion() : String;
	
	/**
	* Print the processor version to the command line.
	*
	* @param argv command line arguments, unused.
	*/
	@:overload @:public @:static public static function _main(argv : java.NativeArray<String>) : Void;
	
	/**
	* Name of product: Xalan.
	*/
	@:overload @:public @:static public static function getProduct() : String;
	
	/**
	* Implementation Language: Java.
	*/
	@:overload @:public @:static public static function getImplementationLanguage() : String;
	
	/**
	* Major version number.
	* Version number. This changes only when there is a
	*          significant, externally apparent enhancement from
	*          the previous release. 'n' represents the n'th
	*          version.
	*
	*          Clients should carefully consider the implications
	*          of new versions as external interfaces and behaviour
	*          may have changed.
	*/
	@:overload @:public @:static public static function getMajorVersionNum() : Int;
	
	/**
	* Release Number.
	* Release number. This changes when:
	*            -  a new set of functionality is to be added, eg,
	*               implementation of a new W3C specification.
	*            -  API or behaviour change.
	*            -  its designated as a reference release.
	*/
	@:overload @:public @:static public static function getReleaseVersionNum() : Int;
	
	/**
	* Maintenance Drop Number.
	* Optional identifier used to designate maintenance
	*          drop applied to a specific release and contains
	*          fixes for defects reported. It maintains compatibility
	*          with the release and contains no API changes.
	*          When missing, it designates the final and complete
	*          development drop for a release.
	*/
	@:overload @:public @:static public static function getMaintenanceVersionNum() : Int;
	
	/**
	* Development Drop Number.
	* Optional identifier designates development drop of
	*          a specific release. D01 is the first development drop
	*          of a new release.
	*
	*          Development drops are works in progress towards a
	*          compeleted, final release. A specific development drop
	*          may not completely implement all aspects of a new
	*          feature, which may take several development drops to
	*          complete. At the point of the final drop for the
	*          release, the D suffix will be omitted.
	*
	*          Each 'D' drops can contain functional enhancements as
	*          well as defect fixes. 'D' drops may not be as stable as
	*          the final releases.
	*/
	@:overload @:public @:static public static function getDevelopmentVersionNum() : Int;
	
	
}
