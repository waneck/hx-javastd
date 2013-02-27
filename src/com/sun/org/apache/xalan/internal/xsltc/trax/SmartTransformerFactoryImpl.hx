package com.sun.org.apache.xalan.internal.xsltc.trax;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
* $Id: SmartTransformerFactoryImpl.java,v 1.2.4.1 2005/09/14 09:57:13 pvedula Exp $
*/
extern class SmartTransformerFactoryImpl extends javax.xml.transform.sax.SAXTransformerFactory
{
	/**
	* implementation of the SmartTransformerFactory. This factory
	* uses com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactory
	* to return Templates objects; and uses
	* com.sun.org.apache.xalan.internal.processor.TransformerFactory
	* to return Transformer objects.
	*/
	@:overload public function new() : Void;
	
	@:overload override public function setErrorListener(listener : javax.xml.transform.ErrorListener) : Void;
	
	@:overload override public function getErrorListener() : javax.xml.transform.ErrorListener;
	
	@:overload override public function getAttribute(name : String) : Dynamic;
	
	@:overload override public function setAttribute(name : String, value : Dynamic) : Void;
	
	/**
	* <p>Set a feature for this <code>SmartTransformerFactory</code> and <code>Transformer</code>s
	* or <code>Template</code>s created by this factory.</p>
	*
	* <p>
	* Feature names are fully qualified {@link java.net.URI}s.
	* Implementations may define their own features.
	* An {@link TransformerConfigurationException} is thrown if this <code>TransformerFactory</code> or the
	* <code>Transformer</code>s or <code>Template</code>s it creates cannot support the feature.
	* It is possible for an <code>TransformerFactory</code> to expose a feature value but be unable to change its state.
	* </p>
	*
	* <p>See {@link javax.xml.transform.TransformerFactory} for full documentation of specific features.</p>
	*
	* @param name Feature name.
	* @param value Is feature state <code>true</code> or <code>false</code>.
	*
	* @throws TransformerConfigurationException if this <code>TransformerFactory</code>
	*   or the <code>Transformer</code>s or <code>Template</code>s it creates cannot support this feature.
	* @throws NullPointerException If the <code>name</code> parameter is null.
	*/
	@:overload override public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* javax.xml.transform.sax.TransformerFactory implementation.
	* Look up the value of a feature (to see if it is supported).
	* This method must be updated as the various methods and features of this
	* class are implemented.
	*
	* @param name The feature name
	* @return 'true' if feature is supported, 'false' if not
	*/
	@:overload override public function getFeature(name : String) : Bool;
	
	@:overload override public function getURIResolver() : javax.xml.transform.URIResolver;
	
	@:overload override public function setURIResolver(resolver : javax.xml.transform.URIResolver) : Void;
	
	@:overload override public function getAssociatedStylesheet(source : javax.xml.transform.Source, media : String, title : String, charset : String) : javax.xml.transform.Source;
	
	/**
	* Create a Transformer object that copies the input document to the
	* result. Uses the com.sun.org.apache.xalan.internal.processor.TransformerFactory.
	* @return A Transformer object.
	*/
	@:overload override public function newTransformer() : javax.xml.transform.Transformer;
	
	/**
	* Create a Transformer object that from the input stylesheet
	* Uses the com.sun.org.apache.xalan.internal.processor.TransformerFactory.
	* @param source the stylesheet.
	* @return A Transformer object.
	*/
	@:overload override public function newTransformer(source : javax.xml.transform.Source) : javax.xml.transform.Transformer;
	
	/**
	* Create a Templates object that from the input stylesheet
	* Uses the com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactory.
	* @param source the stylesheet.
	* @return A Templates object.
	*/
	@:overload override public function newTemplates(source : javax.xml.transform.Source) : javax.xml.transform.Templates;
	
	/**
	* Get a TemplatesHandler object that can process SAX ContentHandler
	* events into a Templates object. Uses the
	* com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactory.
	*/
	@:overload override public function newTemplatesHandler() : javax.xml.transform.sax.TemplatesHandler;
	
	/**
	* Get a TransformerHandler object that can process SAX ContentHandler
	* events based on a copy transformer.
	* Uses com.sun.org.apache.xalan.internal.processor.TransformerFactory.
	*/
	@:overload override public function newTransformerHandler() : javax.xml.transform.sax.TransformerHandler;
	
	/**
	* Get a TransformerHandler object that can process SAX ContentHandler
	* events based on a transformer specified by the stylesheet Source.
	* Uses com.sun.org.apache.xalan.internal.processor.TransformerFactory.
	*/
	@:overload override public function newTransformerHandler(src : javax.xml.transform.Source) : javax.xml.transform.sax.TransformerHandler;
	
	/**
	* Get a TransformerHandler object that can process SAX ContentHandler
	* events based on a transformer specified by the stylesheet Source.
	* Uses com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactory.
	*/
	@:overload override public function newTransformerHandler(templates : javax.xml.transform.Templates) : javax.xml.transform.sax.TransformerHandler;
	
	/**
	* Create an XMLFilter that uses the given source as the
	* transformation instructions. Uses
	* com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactory.
	*/
	@:overload override public function newXMLFilter(src : javax.xml.transform.Source) : org.xml.sax.XMLFilter;
	
	/*
	* Create an XMLFilter that uses the given source as the
	* transformation instructions. Uses
	* com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactory.
	*/
	@:overload override public function newXMLFilter(templates : javax.xml.transform.Templates) : org.xml.sax.XMLFilter;
	
	
}
