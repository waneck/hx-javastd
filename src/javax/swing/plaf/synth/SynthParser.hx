package javax.swing.plaf.synth;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SynthParser extends org.xml.sax.helpers.DefaultHandler
{
	/**
	* Parses a set of styles from <code>inputStream</code>, adding the
	* resulting styles to the passed in DefaultSynthStyleFactory.
	* Resources are resolved either from a URL or from a Class. When calling
	* this method, one of the URL or the Class must be null but not both at
	* the same time.
	*
	* @param inputStream XML document containing the styles to read
	* @param factory DefaultSynthStyleFactory that new styles are added to
	* @param urlResourceBase the URL used to resolve any resources, such as Images
	* @param classResourceBase the Class used to resolve any resources, such as Images
	* @param defaultsMap Map that UIDefaults properties are placed in
	*/
	@:overload public function parse(inputStream : java.io.InputStream, factory : javax.swing.plaf.synth.DefaultSynthStyleFactory, urlResourceBase : java.net.URL, classResourceBase : Class<Dynamic>, defaultsMap : java.util.Map<String, Dynamic>) : Void;
	
	@:overload override public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	@:overload override public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	@:overload override public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	@:overload override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload override public function startDocument() : Void;
	
	@:overload override public function endDocument() : Void;
	
	@:overload override public function startElement(uri : String, local : String, name : String, attributes : org.xml.sax.Attributes) : Void;
	
	@:overload override public function endElement(uri : String, local : String, name : String) : Void;
	
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
	@:overload override public function warning(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload override public function error(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload override public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	
}
/**
* ImageIcon that lazily loads the image until needed.
*/
@:native('javax$swing$plaf$synth$SynthParser$LazyImageIcon') @:internal extern class SynthParser_LazyImageIcon extends javax.swing.ImageIcon implements javax.swing.plaf.UIResource
{
	@:overload public function new(location : java.net.URL) : Void;
	
	@:overload override public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload override public function getIconWidth() : Int;
	
	@:overload override public function getIconHeight() : Int;
	
	@:overload override public function getImage() : java.awt.Image;
	
	
}
