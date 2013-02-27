package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Generate the file with list of all the classes in this run. This page will be
* used in the left-hand bottom frame, when "All Classes" link is clicked in
* the left-hand top frame. The name of the generated file is
* "allclasses-frame.html".
*
* @author Atul M Dambalkar
* @author Doug Kramer
* @author Bhavesh Patel (Modified)
*/
extern class AllClassesFrameWriter extends com.sun.tools.doclets.formats.html.HtmlDocletWriter
{
	/**
	* The name of the output file with frames
	*/
	public static var OUTPUT_FILE_NAME_FRAMES(default, null) : String;
	
	/**
	* The name of the output file without frames
	*/
	public static var OUTPUT_FILE_NAME_NOFRAMES(default, null) : String;
	
	/**
	* Index of all the classes.
	*/
	private var indexbuilder : com.sun.tools.doclets.internal.toolkit.util.IndexBuilder;
	
	/**
	* Construct AllClassesFrameWriter object. Also initilises the indexbuilder
	* variable in this class.
	* @throws IOException
	* @throws DocletAbortException
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, filename : String, indexbuilder : com.sun.tools.doclets.internal.toolkit.util.IndexBuilder) : Void;
	
	/**
	* Create AllClassesFrameWriter object. Then use it to generate the
	* "allclasses-frame.html" file. Generate the file in the current or the
	* destination directory.
	*
	* @param indexbuilder IndexBuilder object for all classes index.
	* @throws DocletAbortException
	*/
	@:overload public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, indexbuilder : com.sun.tools.doclets.internal.toolkit.util.IndexBuilder) : Void;
	
	/**
	* Print all the classes in the file.
	* @param wantFrames True if we want frames.
	*/
	@:overload private function buildAllClassesFile(wantFrames : Bool) : Void;
	
	/**
	* Use the sorted index of all the classes and add all the classes to the
	* content list.
	*
	* @param content HtmlTree content to which all classes information will be added
	* @param wantFrames True if we want frames.
	*/
	@:overload private function addAllClasses(content : com.sun.tools.doclets.internal.toolkit.Content, wantFrames : Bool) : Void;
	
	/**
	* Given a list of classes, generate links for each class or interface.
	* If the class kind is interface, print it in the italics font. Also all
	* links should target the right-hand frame. If clicked on any class name
	* in this page, appropriate class page should get opened in the right-hand
	* frame.
	*
	* @param classlist Sorted list of classes.
	* @param wantFrames True if we want frames.
	* @param content HtmlTree content to which the links will be added
	*/
	@:overload private function addContents(classlist : java.util.List<com.sun.javadoc.Doc>, wantFrames : Bool, content : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	
}
