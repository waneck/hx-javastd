package com.sun.tools.doclets.formats.html.markup;
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
* Class for the Html Format Code Generation specific to JavaDoc.
* This Class contains methods related to the Html Code Generation which
* are used by the Sub-Classes in the package com.sun.tools.doclets.standard
* and com.sun.tools.doclets.oneone.
*
* @since 1.2
* @author Atul M Dambalkar
* @author Robert Field
*/
@:require(java2) extern class HtmlDocWriter extends com.sun.tools.doclets.formats.html.markup.HtmlWriter
{
	/**
	* Constructor. Initializes the destination file name through the super
	* class HtmlWriter.
	*
	* @param filename String file name.
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, filename : String) : Void;
	
	@:overload public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, path : String, filename : String) : Void;
	
	/**
	* Accessor for configuration.
	*/
	@:overload @:abstract public function configuration() : com.sun.tools.doclets.internal.toolkit.Configuration;
	
	/**
	* Print Html Hyper Link.
	*
	* @param link String name of the file.
	* @param where Position of the link in the file. Character '#' is not
	* needed.
	* @param label Tag for the link.
	* @param strong  Boolean that sets label to strong.
	*/
	@:overload public function printHyperLink(link : String, where : String, label : String, strong : Bool) : Void;
	
	/**
	* Print Html Hyper Link.
	*
	* @param link String name of the file.
	* @param where Position of the link in the file. Character '#' is not
	* needed.
	* @param label Tag for the link.
	*/
	@:overload public function printHyperLink(link : String, where : String, label : String) : Void;
	
	/**
	* Print Html Hyper Link.
	*
	* @param link       String name of the file.
	* @param where      Position of the link in the file. Character '#' is not
	* needed.
	* @param label      Tag for the link.
	* @param strong       Boolean that sets label to strong.
	* @param stylename  String style of text defined in style sheet.
	*/
	@:overload public function printHyperLink(link : String, where : String, label : String, strong : Bool, stylename : String) : Void;
	
	/**
	* Return Html Hyper Link string.
	*
	* @param link       String name of the file.
	* @param where      Position of the link in the file. Character '#' is not
	* needed.
	* @param label      Tag for the link.
	* @param strong       Boolean that sets label to strong.
	* @return String    Hyper Link.
	*/
	@:overload public function getHyperLinkString(link : String, where : String, label : String, strong : Bool) : String;
	
	/**
	* Get Html Hyper Link string.
	*
	* @param link       String name of the file.
	* @param where      Position of the link in the file. Character '#' is not
	*                   needed.
	* @param label      Tag for the link.
	* @param strong       Boolean that sets label to strong.
	* @param stylename  String style of text defined in style sheet.
	* @return String    Hyper Link.
	*/
	@:overload public function getHyperLinkString(link : String, where : String, label : String, strong : Bool, stylename : String) : String;
	
	/**
	* Get Html Hyper Link string.
	*
	* @param link       String name of the file.
	* @param where      Position of the link in the file. Character '#' is not
	*                   needed.
	* @param label      Tag for the link.
	* @return a content tree for the hyper link
	*/
	@:overload public function getHyperLink(link : String, where : String, label : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get Html Hyper Link string.
	*
	* @param link       String name of the file.
	* @param where      Position of the link in the file. Character '#' is not
	*                   needed.
	* @param label      Tag for the link.
	* @param strong       Boolean that sets label to strong.
	* @param stylename  String style of text defined in style sheet.
	* @param title      String that describes the link's content for accessibility.
	* @param target     Target frame.
	* @return String    Hyper Link.
	*/
	@:overload public function getHyperLinkString(link : String, where : String, label : String, strong : Bool, stylename : String, title : String, target : String) : String;
	
	/**
	* Get Html Hyper Link.
	*
	* @param link       String name of the file.
	* @param where      Position of the link in the file. Character '#' is not
	*                   needed.
	* @param label      Tag for the link.
	* @param title      String that describes the link's content for accessibility.
	* @param target     Target frame.
	* @return a content tree for the hyper link.
	*/
	@:overload public function getHyperLink(link : String, where : String, label : com.sun.tools.doclets.internal.toolkit.Content, title : String, target : String) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get a hyperlink to a file.
	*
	* @param link String name of the file
	* @param label Label for the link
	* @return a content for the hyperlink to the file
	*/
	@:overload public function getHyperLink(link : String, label : com.sun.tools.doclets.internal.toolkit.Content) : com.sun.tools.doclets.internal.toolkit.Content;
	
	/**
	* Get link string without positioning in the file.
	*
	* @param link       String name of the file.
	* @param label      Tag for the link.
	* @return Strign    Hyper link.
	*/
	@:overload public function getHyperLinkString(link : String, label : String) : String;
	
	/**
	* Print the name of the package, this class is in.
	*
	* @param cd    ClassDoc.
	*/
	@:overload public function printPkgName(cd : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	* Get the name of the package, this class is in.
	*
	* @param cd    ClassDoc.
	*/
	@:overload public function getPkgName(cd : com.sun.javadoc.ClassDoc) : String;
	
	/**
	* Keep track of member details list. Print the definition list start tag
	* if it is not printed yet.
	*/
	@:overload public function printMemberDetailsListStartTag() : Void;
	
	/**
	* Print the definition list end tag if the list start tag was printed.
	*/
	@:overload public function printMemberDetailsListEndTag() : Void;
	
	@:overload public function getMemberDetailsListPrinted() : Bool;
	
	/**
	* Print the frameset version of the Html file header.
	* Called only when generating an HTML frameset file.
	*
	* @param title Title of this HTML document
	* @param noTimeStamp If true, don't print time stamp in header
	* @param frameset the frameset to be added to the HTML document
	*/
	@:overload public function printFramesetDocument(title : String, noTimeStamp : Bool, frameset : com.sun.tools.doclets.internal.toolkit.Content) : Void;
	
	/**
	* Print the appropriate spaces to format the class tree in the class page.
	*
	* @param len   Number of spaces.
	*/
	@:overload public function spaces(len : Int) : String;
	
	/**
	* Print the closing &lt;/body&gt; and &lt;/html&gt; tags.
	*/
	@:overload public function printBodyHtmlEnd() : Void;
	
	/**
	* Calls {@link #printBodyHtmlEnd()} method.
	*/
	@:overload public function printFooter() : Void;
	
	/**
	* Print closing &lt;/html&gt; tag.
	*/
	@:overload public function printFrameFooter() : Void;
	
	/**
	* Print ten non-breaking spaces("&#38;nbsp;").
	*/
	@:overload public function printNbsps() : Void;
	
	/**
	* Get the day and date information for today, depending upon user option.
	*
	* @return String Today.
	* @see java.util.Calendar
	* @see java.util.GregorianCalendar
	* @see java.util.TimeZone
	*/
	@:overload public function today() : String;
	
	
}
