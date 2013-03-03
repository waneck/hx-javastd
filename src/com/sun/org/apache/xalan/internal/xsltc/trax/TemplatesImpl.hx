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
* $Id: TemplatesImpl.java,v 1.8 2007/03/26 20:12:27 spericas Exp $
*/
extern class TemplatesImpl implements javax.xml.transform.Templates implements java.io.Serializable
{
	/**
	* Create an XSLTC template object from the bytecodes.
	* The bytecodes for the translet and auxiliary classes, plus the name of
	* the main translet class, must be supplied.
	*/
	@:overload @:protected private function new(bytecodes : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>, transletName : String, outputProperties : java.util.Properties, indentNumber : Int, tfactory : com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl) : Void;
	
	/**
	* Create an XSLTC template object from the translet class definition(s).
	*/
	@:overload @:protected private function new(transletClasses : java.NativeArray<Class<Dynamic>>, transletName : String, outputProperties : java.util.Properties, indentNumber : Int, tfactory : com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl) : Void;
	
	/**
	* Need for de-serialization, see readObject().
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Return the state of the services mechanism feature.
	*/
	@:overload @:public public function useServicesMechnism() : Bool;
	
	/**
	* Store URIResolver needed for Transformers.
	*/
	@:overload @:public @:synchronized public function setURIResolver(resolver : javax.xml.transform.URIResolver) : Void;
	
	/**
	* Returns the index of the main class in array of bytecodes
	*/
	@:overload @:public @:synchronized public function getTransletIndex() : Int;
	
	/**
	* The TransformerFactory should call this method to set the translet name
	*/
	@:overload @:protected @:synchronized private function setTransletName(name : String) : Void;
	
	/**
	* Returns the name of the main translet class stored in this template
	*/
	@:overload @:protected @:synchronized private function getTransletName() : String;
	
	/**
	* Implements JAXP's Templates.newTransformer()
	*
	* @throws TransformerConfigurationException
	*/
	@:overload @:public @:synchronized public function newTransformer() : javax.xml.transform.Transformer;
	
	/**
	* Implements JAXP's Templates.getOutputProperties(). We need to
	* instanciate a translet to get the output settings, so
	* we might as well just instanciate a Transformer and use its
	* implementation of this method.
	*/
	@:overload @:public @:synchronized public function getOutputProperties() : java.util.Properties;
	
	/**
	* Return the thread local copy of the stylesheet DOM.
	*/
	@:overload @:public public function getStylesheetDOM() : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	/**
	* Set the thread local copy of the stylesheet DOM.
	*/
	@:overload @:public public function setStylesheetDOM(sdom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Void;
	
	
}
@:native('com$sun$org$apache$xalan$internal$xsltc$trax$TemplatesImpl$TransletClassLoader') @:internal extern class TemplatesImpl_TransletClassLoader extends java.lang.ClassLoader
{
	
}
