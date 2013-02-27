package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Configure the output based on the command line options.
* <p>
* Also determine the length of the command line option. For example,
* for a option "-header" there will be a string argument associated, then the
* the length of option "-header" is two. But for option "-nohelp" no argument
* is needed so it's length is 1.
* </p>
* <p>
* Also do the error checking on the options used. For example it is illegal to
* use "-helpfile" option when already "-nohelp" option is used.
* </p>
*
* @author Robert Field.
* @author Atul Dambalkar.
* @author Jamie Ho
* @author Bhavesh Patel (Modified)
*/
extern class ConfigurationImpl extends com.sun.tools.doclets.internal.toolkit.Configuration
{
	/**
	* The build date.  Note: For now, we will use
	* a version number instead of a date.
	*/
	public static var BUILD_DATE(default, null) : String;
	
	/**
	* The name of the constant values file.
	*/
	public static var CONSTANTS_FILE_NAME(default, null) : String;
	
	/**
	* Argument for command line option "-header".
	*/
	public var header : String;
	
	/**
	* Argument for command line option "-packagesheader".
	*/
	public var packagesheader : String;
	
	/**
	* Argument for command line option "-footer".
	*/
	public var footer : String;
	
	/**
	* Argument for command line option "-doctitle".
	*/
	public var doctitle : String;
	
	/**
	* Argument for command line option "-windowtitle".
	*/
	public var windowtitle : String;
	
	/**
	* Argument for command line option "-top".
	*/
	public var top : String;
	
	/**
	* Argument for command line option "-bottom".
	*/
	public var bottom : String;
	
	/**
	* Argument for command line option "-helpfile".
	*/
	public var helpfile : String;
	
	/**
	* Argument for command line option "-stylesheetfile".
	*/
	public var stylesheetfile : String;
	
	/**
	* Argument for command line option "-Xdocrootparent".
	*/
	public var docrootparent : String;
	
	/**
	* True if command line option "-nohelp" is used. Default value is false.
	*/
	public var nohelp : Bool;
	
	/**
	* True if command line option "-splitindex" is used. Default value is
	* false.
	*/
	public var splitindex : Bool;
	
	/**
	* False if command line option "-noindex" is used. Default value is true.
	*/
	public var createindex : Bool;
	
	/**
	* True if command line option "-use" is used. Default value is false.
	*/
	public var classuse : Bool;
	
	/**
	* False if command line option "-notree" is used. Default value is true.
	*/
	public var createtree : Bool;
	
	/**
	* True if command line option "-nodeprecated" is used. Default value is
	* false.
	*/
	public var nodeprecatedlist : Bool;
	
	/**
	* True if command line option "-nonavbar" is used. Default value is false.
	*/
	public var nonavbar : Bool;
	
	/**
	* True if command line option "-overview" is used. Default value is false.
	*/
	public var overview : Bool;
	
	/**
	* This is true if option "-overview" is used or option "-overview" is not
	* used and number of packages is more than one.
	*/
	public var createoverview : Bool;
	
	/**
	* Unique Resource Handler for this package.
	*/
	public var standardmessage(default, null) : com.sun.tools.doclets.internal.toolkit.util.MessageRetriever;
	
	/**
	* First file to appear in the right-hand frame in the generated
	* documentation.
	*/
	public var topFile : String;
	
	/**
	* The classdoc for the class file getting generated.
	*/
	public var currentcd : com.sun.javadoc.ClassDoc;
	
	/**
	* Reset to a fresh new ConfigurationImpl, to allow multiple invocations
	* of javadoc within a single VM. It would be better not to be using
	* static fields at all, but .... (sigh).
	*/
	@:overload public static function reset() : Void;
	
	@:overload public static function getInstance() : ConfigurationImpl;
	
	/**
	* Return the build date for the doclet.
	*/
	@:overload override public function getDocletSpecificBuildDate() : String;
	
	/**
	* Depending upon the command line options provided by the user, set
	* configure the output generation environment.
	*
	* @param options The array of option names and values.
	*/
	@:overload override public function setSpecificDocletOptions(options : java.NativeArray<java.NativeArray<String>>) : Void;
	
	/**
	* Returns the "length" of a given option. If an option takes no
	* arguments, its length is one. If it takes one argument, it's
	* length is two, and so on. This method is called by JavaDoc to
	* parse the options it does not recognize. It then calls
	* {@link #validOptions(String[][], DocErrorReporter)} to
	* validate them.
	* <b>Note:</b><br>
	* The options arrive as case-sensitive strings. For options that
	* are not case-sensitive, use toLowerCase() on the option string
	* before comparing it.
	* </blockquote>
	*
	* @return number of arguments + 1 for a option. Zero return means
	* option not known.  Negative value means error occurred.
	*/
	@:overload override public function optionLength(option : String) : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function validOptions(options : java.NativeArray<java.NativeArray<String>>, reporter : com.sun.javadoc.DocErrorReporter) : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getDocletSpecificMsg() : com.sun.tools.doclets.internal.toolkit.util.MessageRetriever;
	
	/**
	* Decide the page which will appear first in the right-hand frame. It will
	* be "overview-summary.html" if "-overview" option is used or no
	* "-overview" but the number of packages is more than one. It will be
	* "package-summary.html" of the respective package if there is only one
	* package to document. It will be a class page(first in the sorted order),
	* if only classes are provided on the command line.
	*
	* @param root Root of the program structure.
	*/
	@:overload private function setTopFile(root : com.sun.javadoc.RootDoc) : Void;
	
	@:overload private function getValidClass(classarr : java.NativeArray<com.sun.javadoc.ClassDoc>) : com.sun.javadoc.ClassDoc;
	
	@:overload private function checkForDeprecation(root : com.sun.javadoc.RootDoc) : Bool;
	
	/**
	* Generate "overview.html" page if option "-overview" is used or number of
	* packages is more than one. Sets {@link #createoverview} field to true.
	*/
	@:overload private function setCreateOverview() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getWriterFactory() : com.sun.tools.doclets.internal.toolkit.WriterFactory;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getMemberComparator() : java.util.Comparator<com.sun.javadoc.ProgramElementDoc>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getLocale() : java.util.Locale;
	
	
}
