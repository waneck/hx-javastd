package com.sun.tools.doclets.internal.toolkit;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/**
* Configure the output based on the options. Doclets should sub-class
* Configuration, to configure and add their own options. This class contains
* all user options which are supported by the 1.1 doclet and the standard
* doclet.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Robert Field.
* @author Atul Dambalkar.
* @author Jamie Ho
*/
extern class Configuration
{
	/**
	* The factory for builders.
	*/
	@:protected private var builderFactory : com.sun.tools.doclets.internal.toolkit.builders.BuilderFactory;
	
	/**
	* The taglet manager.
	*/
	@:public public var tagletManager : com.sun.tools.doclets.internal.toolkit.taglets.TagletManager;
	
	/**
	* The path to the builder XML input file.
	*/
	@:public public var builderXMLPath : String;
	
	/**
	* The path to Taglets
	*/
	@:public public var tagletpath : String;
	
	/**
	* This is true if option "-serialwarn" is used. Defualt value is false to
	* supress excessive warnings about serial tag.
	*/
	@:public public var serialwarn : Bool;
	
	/**
	* The specified amount of space between tab stops.
	*/
	@:public public var sourcetab : Int;
	
	/**
	* True if we should generate browsable sources.
	*/
	@:public public var linksource : Bool;
	
	/**
	* True if command line option "-nosince" is used. Default value is
	* false.
	*/
	@:public public var nosince : Bool;
	
	/**
	* True if we should recursively copy the doc-file subdirectories
	*/
	@:public public var copydocfilesubdirs : Bool;
	
	/**
	* The META charset tag used for cross-platform viewing.
	*/
	@:public public var charset : String;
	
	/**
	* True if user wants to add member names as meta keywords.
	* Set to false because meta keywords are ignored in general
	* by most Internet search engines.
	*/
	@:public public var keywords : Bool;
	
	/**
	* The meta tag keywords instance.
	*/
	@:public @:final public var metakeywords(default, null) : com.sun.tools.doclets.internal.toolkit.util.MetaKeywords;
	
	/**
	* The list of doc-file subdirectories to exclude
	*/
	@:protected private var excludedDocFileDirs : java.util.Set<String>;
	
	/**
	* The list of qualifiers to exclude
	*/
	@:protected private var excludedQualifiers : java.util.Set<String>;
	
	/**
	* The Root of the generated Program Structure from the Doclet API.
	*/
	@:public public var root : com.sun.javadoc.RootDoc;
	
	/**
	* Destination directory name, in which doclet will generate the entire
	* documentation. Default is current directory.
	*/
	@:public public var destDirName : String;
	
	/**
	* Destination directory name, in which doclet will copy the doc-files to.
	*/
	@:public public var docFileDestDirName : String;
	
	/**
	* Encoding for this document. Default is default encoding for this
	* platform.
	*/
	@:public public var docencoding : String;
	
	/**
	* True if user wants to suppress descriptions and tags.
	*/
	@:public public var nocomment : Bool;
	
	/**
	* Encoding for this document. Default is default encoding for this
	* platform.
	*/
	@:public public var encoding : String;
	
	/**
	* Generate author specific information for all the classes if @author
	* tag is used in the doc comment and if -author option is used.
	* <code>showauthor</code> is set to true if -author option is used.
	* Default is don't show author information.
	*/
	@:public public var showauthor : Bool;
	
	/**
	* Generate version specific information for the all the classes
	* if @version tag is used in the doc comment and if -version option is
	* used. <code>showversion</code> is set to true if -version option is
	* used.Default is don't show version information.
	*/
	@:public public var showversion : Bool;
	
	/**
	* Sourcepath from where to read the source files. Default is classpath.
	*
	*/
	@:public public var sourcepath : String;
	
	/**
	* Don't generate deprecated API information at all, if -nodeprecated
	* option is used. <code>nodepracted</code> is set to true if
	* -nodeprecated option is used. Default is generate deprected API
	* information.
	*/
	@:public public var nodeprecated : Bool;
	
	/**
	* The catalog of classes specified on the command-line
	*/
	@:public public var classDocCatalog : com.sun.tools.doclets.internal.toolkit.util.ClassDocCatalog;
	
	/**
	* Message Retriever for the doclet, to retrieve message from the resource
	* file for this Configuration, which is common for 1.1 and standard
	* doclets.
	*
	* TODO:  Make this private!!!
	*/
	@:public public var message : com.sun.tools.doclets.internal.toolkit.util.MessageRetriever;
	
	/**
	* True if user wants to suppress time stamp in output.
	* Default is false.
	*/
	@:public public var notimestamp : Bool;
	
	/**
	* The package grouping instance.
	*/
	@:public @:final public var group(default, null) : com.sun.tools.doclets.internal.toolkit.util.Group;
	
	/**
	* The tracker of external package links.
	*/
	//@:public @:final public var _extern(default, null) : com.sun.tools.doclets.internal.toolkit.util.Extern;
	
	/**
	* Returns true if the user wants to generate JavaFX documentation.
	*/
	@:overload @:public @:static public static function getJavafxJavadoc() : Bool;
	
	/**
	* Location of doclet properties file.
	*/
	@:public @:static @:final public static var DOCLETS_RESOURCE(default, null) : String;
	
	/**
	* Return the build date for the doclet.
	*/
	@:overload @:public @:abstract public function getDocletSpecificBuildDate() : String;
	
	/**
	* This method should be defined in all those doclets(configurations),
	* which want to derive themselves from this Configuration. This method
	* can be used to set its own command line options.
	*
	* @param options The array of option names and values.
	* @throws DocletAbortException
	*/
	@:overload @:public @:abstract public function setSpecificDocletOptions(options : java.NativeArray<java.NativeArray<String>>) : Void;
	
	/**
	* Return the doclet specific {@link MessageRetriever}
	* @return the doclet specific MessageRetriever.
	*/
	@:overload @:public @:abstract public function getDocletSpecificMsg() : com.sun.tools.doclets.internal.toolkit.util.MessageRetriever;
	
	/**
	* An array of the packages specified on the command-line merged
	* with the array of packages that contain the classes specified on the
	* command-line.  The array is sorted.
	*/
	@:public public var packages : java.NativeArray<com.sun.javadoc.PackageDoc>;
	
	/**
	* Constructor. Constructs the message retriever with resource file.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Return the builder factory for this doclet.
	*
	* @return the builder factory for this doclet.
	*/
	@:overload @:public public function getBuilderFactory() : com.sun.tools.doclets.internal.toolkit.builders.BuilderFactory;
	
	/**
	* This method should be defined in all those doclets
	* which want to inherit from this Configuration. This method
	* should return the number of arguments to the command line
	* option (including the option name).  For example,
	* -notimestamp is a single-argument option, so this method would
	* return 1.
	*
	* @param option Command line option under consideration.
	* @return number of arguments to option (including the
	* option name). Zero return means option not known.
	* Negative value means error occurred.
	*/
	@:overload @:public public function optionLength(option : String) : Int;
	
	/**
	* Perform error checking on the given options.
	*
	* @param options  the given options to check.
	* @param reporter the reporter used to report errors.
	*/
	@:overload @:public @:abstract public function validOptions(options : java.NativeArray<java.NativeArray<String>>, reporter : com.sun.javadoc.DocErrorReporter) : Bool;
	
	/**
	* Set the command line options supported by this configuration.
	*
	* @param options the two dimensional array of options.
	*/
	@:overload @:public public function setOptions(options : java.NativeArray<java.NativeArray<String>>) : Void;
	
	/**
	* Set the command line options supported by this configuration.
	*
	* @throws DocletAbortException
	*/
	@:overload @:public public function setOptions() : Void;
	
	/**
	* This checks for the validity of the options used by the user.
	* This works exactly like
	* {@link com.sun.javadoc.Doclet#validOptions(String[][],
	* DocErrorReporter)}. This will validate the options which are shared
	* by our doclets. For example, this method will flag an error using
	* the DocErrorReporter if user has used "-nohelp" and "-helpfile" option
	* together.
	*
	* @param options  options used on the command line.
	* @param reporter used to report errors.
	* @return true if all the options are valid.
	*/
	@:overload @:public public function generalValidOptions(options : java.NativeArray<java.NativeArray<String>>, reporter : com.sun.javadoc.DocErrorReporter) : Bool;
	
	/**
	* Return true if the given doc-file subdirectory should be excluded and
	* false otherwise.
	* @param docfilesubdir the doc-files subdirectory to check.
	*/
	@:overload @:public public function shouldExcludeDocFileDir(docfilesubdir : String) : Bool;
	
	/**
	* Return true if the given qualifier should be excluded and false otherwise.
	* @param qualifier the qualifier to check.
	*/
	@:overload @:public public function shouldExcludeQualifier(qualifier : String) : Bool;
	
	/**
	* Return the qualified name of the <code>ClassDoc</code> if it's qualifier is not excluded.  Otherwise,
	* return the unqualified <code>ClassDoc</code> name.
	* @param cd the <code>ClassDoc</code> to check.
	*/
	@:overload @:public public function getClassName(cd : com.sun.javadoc.ClassDoc) : String;
	
	@:overload @:public public function getText(key : String) : String;
	
	@:overload @:public public function getText(key : String, a1 : String) : String;
	
	@:overload @:public public function getText(key : String, a1 : String, a2 : String) : String;
	
	@:overload @:public public function getText(key : String, a1 : String, a2 : String, a3 : String) : String;
	
	/**
	* Return true if the ClassDoc element is getting documented, depending upon
	* -nodeprecated option and the deprecation information. Return true if
	* -nodeprecated is not used. Return false if -nodeprecated is used and if
	* either ClassDoc element is deprecated or the containing package is deprecated.
	*
	* @param cd the ClassDoc for which the page generation is checked
	*/
	@:overload @:public public function isGeneratedDoc(cd : com.sun.javadoc.ClassDoc) : Bool;
	
	/**
	* Return the doclet specific instance of a writer factory.
	* @return the {@link WriterFactory} for the doclet.
	*/
	@:overload @:public @:abstract public function getWriterFactory() : com.sun.tools.doclets.internal.toolkit.WriterFactory;
	
	/**
	* Return the input stream to the builder XML.
	*
	* @return the input steam to the builder XML.
	* @throws FileNotFoundException when the given XML file cannot be found.
	*/
	@:overload @:public public function getBuilderXML() : java.io.InputStream;
	
	/**
	* Return the Locale for this document.
	*/
	@:overload @:public @:abstract public function getLocale() : java.util.Locale;
	
	/**
	* Return the comparator that will be used to sort member documentation.
	* To no do any sorting, return null.
	*
	* @return the {@link java.util.Comparator} used to sort members.
	*/
	@:overload @:public @:abstract public function getMemberComparator() : java.util.Comparator<com.sun.javadoc.ProgramElementDoc>;
	
	
}
