package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
* The class with "start" method, calls individual Writers.
*
* @author Atul M Dambalkar
* @author Robert Field
* @author Jamie Ho
*
*/
extern class HtmlDoclet extends com.sun.tools.doclets.internal.toolkit.AbstractDoclet
{
	@:overload public function new() : Void;
	
	/**
	* The "start" method as required by Javadoc.
	*
	* @param root the root of the documentation tree.
	* @see com.sun.javadoc.RootDoc
	* @return true if the doclet ran without encountering any errors.
	*/
	@:native('start') @:overload public static function _start(root : com.sun.javadoc.RootDoc) : Bool;
	
	/**
	* Create the configuration instance.
	* Override this method to use a different
	* configuration.
	*/
	@:overload override public function configuration() : com.sun.tools.doclets.internal.toolkit.Configuration;
	
	/**
	* Start the generation of files. Call generate methods in the individual
	* writers, which will in turn genrate the documentation files. Call the
	* TreeWriter generation first to ensure the Class Hierarchy is built
	* first and then can be used in the later generation.
	*
	* For new format.
	*
	* @see com.sun.javadoc.RootDoc
	*/
	@:overload override private function generateOtherFiles(root : com.sun.javadoc.RootDoc, classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override private function generateClassFiles(arr : java.NativeArray<com.sun.javadoc.ClassDoc>, classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override private function generatePackageFiles(classtree : com.sun.tools.doclets.internal.toolkit.util.ClassTree) : Void;
	
	/**
	* Check for doclet added options here.
	*
	* @return number of arguments to option. Zero return means
	* option not known.  Negative value means error occurred.
	*/
	@:overload public static function optionLength(option : String) : Int;
	
	/**
	* Check that options have the correct arguments here.
	* <P>
	* This method is not required and will default gracefully
	* (to true) if absent.
	* <P>
	* Printing option related error messages (using the provided
	* DocErrorReporter) is the responsibility of this method.
	*
	* @return true if the options are valid.
	*/
	@:overload public static function validOptions(options : java.NativeArray<java.NativeArray<String>>, reporter : com.sun.javadoc.DocErrorReporter) : Bool;
	
	
}
