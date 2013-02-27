package com.sun.org.apache.xpath.internal.jaxp;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
//// $Id: XPathFactoryImpl.java,v 1.2 2005/08/16 22:41:13 jeffsuttor Exp $
extern class XPathFactoryImpl extends javax.xml.xpath.XPathFactory
{
	@:overload public function new() : Void;
	
	@:overload public static function newXPathFactoryNoServiceLoader() : javax.xml.xpath.XPathFactory;
	
	@:overload public function new(useServicesMechanism : Bool) : Void;
	
	/**
	* <p>Is specified object model supported by this
	* <code>XPathFactory</code>?</p>
	*
	* @param objectModel Specifies the object model which the returned
	* <code>XPathFactory</code> will understand.
	*
	* @return <code>true</code> if <code>XPathFactory</code> supports
	* <code>objectModel</code>, else <code>false</code>.
	*
	* @throws NullPointerException If <code>objectModel</code> is <code>null</code>.
	* @throws IllegalArgumentException If <code>objectModel.length() == 0</code>.
	*/
	@:overload override public function isObjectModelSupported(objectModel : String) : Bool;
	
	/**
	* <p>Returns a new <code>XPath</code> object using the underlying
	* object model determined when the factory was instantiated.</p>
	*
	* @return New <code>XPath</code>
	*/
	@:overload override public function newXPath() : javax.xml.xpath.XPath;
	
	/**
	* <p>Set a feature for this <code>XPathFactory</code> and
	* <code>XPath</code>s created by this factory.</p>
	*
	* <p>
	* Feature names are fully qualified {@link java.net.URI}s.
	* Implementations may define their own features.
	* An {@link XPathFactoryConfigurationException} is thrown if this
	* <code>XPathFactory</code> or the <code>XPath</code>s
	*  it creates cannot support the feature.
	* It is possible for an <code>XPathFactory</code> to expose a feature
	* value but be unable to change its state.
	* </p>
	*
	* <p>See {@link javax.xml.xpath.XPathFactory} for full documentation
	* of specific features.</p>
	*
	* @param name Feature name.
	* @param value Is feature state <code>true</code> or <code>false</code>.
	*
	* @throws XPathFactoryConfigurationException if this
	* <code>XPathFactory</code> or the <code>XPath</code>s
	*   it creates cannot support this feature.
	* @throws NullPointerException if <code>name</code> is
	* <code>null</code>.
	*/
	@:overload override public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* <p>Get the state of the named feature.</p>
	*
	* <p>
	* Feature names are fully qualified {@link java.net.URI}s.
	* Implementations may define their own features.
	* An {@link XPathFactoryConfigurationException} is thrown if this
	* <code>XPathFactory</code> or the <code>XPath</code>s
	* it creates cannot support the feature.
	* It is possible for an <code>XPathFactory</code> to expose a feature
	* value but be unable to change its state.
	* </p>
	*
	* @param name Feature name.
	*
	* @return State of the named feature.
	*
	* @throws XPathFactoryConfigurationException if this
	* <code>XPathFactory</code> or the <code>XPath</code>s
	*   it creates cannot support this feature.
	* @throws NullPointerException if <code>name</code> is
	* <code>null</code>.
	*/
	@:overload override public function getFeature(name : String) : Bool;
	
	/**
	* <p>Establish a default function resolver.</p>
	*
	* <p>Any <code>XPath</code> objects constructed from this factory will use
	* the specified resolver by default.</p>
	*
	* <p>A <code>NullPointerException</code> is thrown if
	* <code>resolver</code> is <code>null</code>.</p>
	*
	* @param resolver XPath function resolver.
	*
	* @throws NullPointerException If <code>resolver</code> is
	* <code>null</code>.
	*/
	@:overload override public function setXPathFunctionResolver(resolver : javax.xml.xpath.XPathFunctionResolver) : Void;
	
	/**
	* <p>Establish a default variable resolver.</p>
	*
	* <p>Any <code>XPath</code> objects constructed from this factory will use
	* the specified resolver by default.</p>
	*
	* <p>A <code>NullPointerException</code> is thrown if <code>resolver</code> is <code>null</code>.</p>
	*
	* @param resolver Variable resolver.
	*
	*  @throws NullPointerException If <code>resolver</code> is
	* <code>null</code>.
	*/
	@:overload override public function setXPathVariableResolver(resolver : javax.xml.xpath.XPathVariableResolver) : Void;
	
	
}
