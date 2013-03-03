package com.sun.org.apache.xerces.internal.jaxp;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
@:internal extern class JAXPValidatorComponent extends com.sun.org.apache.xerces.internal.jaxp.TeeXMLDocumentFilterImpl implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
{
	/**
	* @param validatorHandler may not be null.
	*/
	@:overload @:public public function new(validatorHandler : javax.xml.validation.ValidatorHandler) : Void;
	
	@:overload @:public override public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	@:overload @:public public function getRecognizedFeatures() : java.NativeArray<String>;
	
	@:overload @:public public function setFeature(featureId : String, state : Bool) : Void;
	
	@:overload @:public public function getRecognizedProperties() : java.NativeArray<String>;
	
	@:overload @:public public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	@:overload @:public public function getFeatureDefault(featureId : String) : Null<Bool>;
	
	@:overload @:public public function getPropertyDefault(propertyId : String) : Dynamic;
	
	
}
/**
*
* Uses {@link DefaultHandler} as a default implementation of
* {@link ContentHandler}.
*
* <p>
* We only forward certain events from a {@link ValidatorHandler}.
* Other events should go "the 2nd direct route".
*/
@:native('com$sun$org$apache$xerces$internal$jaxp$JAXPValidatorComponent$SAX2XNI') @:internal extern class JAXPValidatorComponent_SAX2XNI extends org.xml.sax.helpers.DefaultHandler
{
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	@:overload @:public override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	@:overload @:public override public function startElement(uri : String, localName : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:public override public function endElement(uri : String, localName : String, qname : String) : Void;
	
	
}
/**
* Converts {@link XNI} events to {@link ContentHandler} events.
*
* <p>
* Deriving from {@link DefaultXMLDocumentHandler}
* to reuse its default {@link com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler}
* implementation.
*
* @author Kohsuke Kawaguchi (kohsuke.kawaguchi@sun.com)
*/
@:native('com$sun$org$apache$xerces$internal$jaxp$JAXPValidatorComponent$XNI2SAX') @:internal extern class JAXPValidatorComponent_XNI2SAX extends com.sun.org.apache.xerces.internal.impl.xs.opti.DefaultXMLDocumentHandler
{
	/** Namespace context */
	@:protected private var fNamespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext;
	
	@:overload @:public public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public public function getContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload @:public override public function xmlDecl(version : String, encoding : String, standalone : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function startDocument(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, encoding : String, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload @:public override public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	
}
@:native('com$sun$org$apache$xerces$internal$jaxp$JAXPValidatorComponent$DraconianErrorHandler') @:internal extern class JAXPValidatorComponent_DraconianErrorHandler implements org.xml.sax.ErrorHandler
{
	/** Returns the one and only instance of this error handler. */
	@:overload @:public @:static public static function getInstance() : com.sun.org.apache.xerces.internal.jaxp.JAXPValidatorComponent.JAXPValidatorComponent_DraconianErrorHandler;
	
	/** Warning: Ignore. */
	@:overload @:public public function warning(e : org.xml.sax.SAXParseException) : Void;
	
	/** Error: Throws back SAXParseException. */
	@:overload @:public public function error(e : org.xml.sax.SAXParseException) : Void;
	
	/** Fatal Error: Throws back SAXParseException. */
	@:overload @:public public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	
}
