package javax.xml.transform.sax;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class SAXTransformerFactory extends javax.xml.transform.TransformerFactory
{
	/** If {@link javax.xml.transform.TransformerFactory#getFeature}
	* returns true when passed this value as an argument,
	* the TransformerFactory returned from
	* {@link javax.xml.transform.TransformerFactory#newInstance} may
	* be safely cast to a SAXTransformerFactory.
	*/
	@:public @:static @:final public static var FEATURE(default, null) : String;
	
	/** If {@link javax.xml.transform.TransformerFactory#getFeature}
	* returns true when passed this value as an argument,
	* the {@link #newXMLFilter(Source src)}
	* and {@link #newXMLFilter(Templates templates)} methods are supported.
	*/
	@:public @:static @:final public static var FEATURE_XMLFILTER(default, null) : String;
	
	/**
	* The default constructor is protected on purpose.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Get a TransformerHandler object that can process SAX
	* ContentHandler events into a Result, based on the transformation
	* instructions specified by the argument.
	*
	* @param src The Source of the transformation instructions.
	*
	* @return TransformerHandler ready to transform SAX events.
	*
	* @throws TransformerConfigurationException If for some reason the
	* TransformerHandler can not be created.
	*/
	@:overload @:public @:abstract public function newTransformerHandler(src : javax.xml.transform.Source) : javax.xml.transform.sax.TransformerHandler;
	
	/**
	* Get a TransformerHandler object that can process SAX
	* ContentHandler events into a Result, based on the Templates argument.
	*
	* @param templates The compiled transformation instructions.
	*
	* @return TransformerHandler ready to transform SAX events.
	*
	* @throws TransformerConfigurationException If for some reason the
	* TransformerHandler can not be created.
	*/
	@:overload @:public @:abstract public function newTransformerHandler(templates : javax.xml.transform.Templates) : javax.xml.transform.sax.TransformerHandler;
	
	/**
	* Get a TransformerHandler object that can process SAX
	* ContentHandler events into a Result. The transformation
	* is defined as an identity (or copy) transformation, for example
	* to copy a series of SAX parse events into a DOM tree.
	*
	* @return A non-null reference to a TransformerHandler, that may
	* be used as a ContentHandler for SAX parse events.
	*
	* @throws TransformerConfigurationException If for some reason the
	* TransformerHandler cannot be created.
	*/
	@:overload @:public @:abstract public function newTransformerHandler() : javax.xml.transform.sax.TransformerHandler;
	
	/**
	* Get a TemplatesHandler object that can process SAX
	* ContentHandler events into a Templates object.
	*
	* @return A non-null reference to a TransformerHandler, that may
	* be used as a ContentHandler for SAX parse events.
	*
	* @throws TransformerConfigurationException If for some reason the
	* TemplatesHandler cannot be created.
	*/
	@:overload @:public @:abstract public function newTemplatesHandler() : javax.xml.transform.sax.TemplatesHandler;
	
	/**
	* Create an XMLFilter that uses the given Source as the
	* transformation instructions.
	*
	* @param src The Source of the transformation instructions.
	*
	* @return An XMLFilter object, or null if this feature is not supported.
	*
	* @throws TransformerConfigurationException If for some reason the
	* TemplatesHandler cannot be created.
	*/
	@:overload @:public @:abstract public function newXMLFilter(src : javax.xml.transform.Source) : org.xml.sax.XMLFilter;
	
	/**
	* Create an XMLFilter, based on the Templates argument..
	*
	* @param templates The compiled transformation instructions.
	*
	* @return An XMLFilter object, or null if this feature is not supported.
	*
	* @throws TransformerConfigurationException If for some reason the
	* TemplatesHandler cannot be created.
	*/
	@:overload @:public @:abstract public function newXMLFilter(templates : javax.xml.transform.Templates) : org.xml.sax.XMLFilter;
	
	
}
