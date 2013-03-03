package com.sun.tools.doclets.formats.html;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Generate the documentation in the Html "frame" format in the browser. The
* generated documentation will have two or three frames depending upon the
* number of packages on the command line. In general there will be three frames
* in the output, a left-hand top frame will have a list of all packages with
* links to target left-hand bottom frame. The left-hand bottom frame will have
* the particular package contents or the all-classes list, where as the single
* right-hand frame will have overview or package summary or class file. Also
* take care of browsers which do not support Html frames.
*
* @author Atul M Dambalkar
*/
extern class FrameOutputWriter extends com.sun.tools.doclets.formats.html.HtmlDocletWriter
{
	/**
	* Constructor to construct FrameOutputWriter object.
	*
	* @param filename File to be generated.
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl, filename : String) : Void;
	
	/**
	* Construct FrameOutputWriter object and then use it to generate the Html
	* file which will have the description of all the frames in the
	* documentation. The name of the generated file is "index.html" which is
	* the default first file for Html documents.
	* @throws DocletAbortException
	*/
	@:overload @:public @:static public static function generate(configuration : com.sun.tools.doclets.formats.html.ConfigurationImpl) : Void;
	
	/**
	* Generate the contants in the "index.html" file. Print the frame details
	* as well as warning if browser is not supporting the Html frames.
	*/
	@:overload @:protected private function generateFrameFile() : Void;
	
	/**
	* Add the code for issueing the warning for a non-frame capable web
	* client. Also provide links to the non-frame version documentation.
	*
	* @param contentTree the content tree to which the non-frames information will be added
	*/
	@:overload @:protected private function addFrameWarning(contentTree : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Get the frame sizes and their contents.
	*
	* @return a content tree for the frame details
	*/
	@:overload @:protected private function getFrameDetails() : com.sun.tools.doclets.internal.toolkit.Content;
	
	
}
