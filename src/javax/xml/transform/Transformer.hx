package javax.xml.transform;
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
extern class Transformer
{
	/**
	* Default constructor is protected on purpose.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* <p>Reset this <code>Transformer</code> to its original configuration.</p>
	*
	* <p><code>Transformer</code> is reset to the same state as when it was created with
	* {@link TransformerFactory#newTransformer()},
	* {@link TransformerFactory#newTransformer(Source source)} or
	* {@link Templates#newTransformer()}.
	* <code>reset()</code> is designed to allow the reuse of existing <code>Transformer</code>s
	* thus saving resources associated with the creation of new <code>Transformer</code>s.</p>
	*
	* <p>The reset <code>Transformer</code> is not guaranteed to have the same {@link URIResolver}
	* or {@link ErrorListener} <code>Object</code>s, e.g. {@link Object#equals(Object obj)}.
	* It is guaranteed to have a functionally equal <code>URIResolver</code>
	* and <code>ErrorListener</code>.</p>
	*
	* @throws UnsupportedOperationException When implementation does not
	*   override this method.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function reset() : Void;
	
	/**
	* <p>Transform the XML <code>Source</code> to a <code>Result</code>.
	* Specific transformation behavior is determined by the settings of the
	* <code>TransformerFactory</code> in effect when the
	* <code>Transformer</code> was instantiated and any modifications made to
	* the <code>Transformer</code> instance.</p>
	*
	* <p>An empty <code>Source</code> is represented as an empty document
	* as constructed by {@link javax.xml.parsers.DocumentBuilder#newDocument()}.
	* The result of transforming an empty <code>Source</code> depends on
	* the transformation behavior; it is not always an empty
	* <code>Result</code>.</p>
	*
	* @param xmlSource The XML input to transform.
	* @param outputTarget The <code>Result</code> of transforming the
	*   <code>xmlSource</code>.
	*
	* @throws TransformerException If an unrecoverable error occurs
	*   during the course of the transformation.
	*/
	@:overload @:public @:abstract public function transform(xmlSource : javax.xml.transform.Source, outputTarget : javax.xml.transform.Result) : Void;
	
	/**
	* Add a parameter for the transformation.
	*
	* <p>Pass a qualified name as a two-part string, the namespace URI
	* enclosed in curly braces ({}), followed by the local name. If the
	* name has a null URL, the String only contain the local name. An
	* application can safely check for a non-null URI by testing to see if the
	* first character of the name is a '{' character.</p>
	* <p>For example, if a URI and local name were obtained from an element
	* defined with &lt;xyz:foo
	* xmlns:xyz="http://xyz.foo.com/yada/baz.html"/&gt;,
	* then the qualified name would be "{http://xyz.foo.com/yada/baz.html}foo".
	* Note that no prefix is used.</p>
	*
	* @param name The name of the parameter, which may begin with a
	* namespace URI in curly braces ({}).
	* @param value The value object.  This can be any valid Java object. It is
	* up to the processor to provide the proper object coersion or to simply
	* pass the object on for use in an extension.
	*
	* @throws NullPointerException If value is null.
	*/
	@:overload @:public @:abstract public function setParameter(name : String, value : Dynamic) : Void;
	
	/**
	* Get a parameter that was explicitly set with setParameter.
	*
	* <p>This method does not return a default parameter value, which
	* cannot be determined until the node context is evaluated during
	* the transformation process.
	*
	* @param name of <code>Object</code> to get
	*
	* @return A parameter that has been set with setParameter.
	*/
	@:overload @:public @:abstract public function getParameter(name : String) : Dynamic;
	
	/**
	* Clear all parameters set with setParameter.
	*/
	@:overload @:public @:abstract public function clearParameters() : Void;
	
	/**
	* Set an object that will be used to resolve URIs used in
	* document().
	*
	* <p>If the resolver argument is null, the URIResolver value will
	* be cleared and the transformer will no longer have a resolver.</p>
	*
	* @param resolver An object that implements the URIResolver interface,
	* or null.
	*/
	@:overload @:public @:abstract public function setURIResolver(resolver : javax.xml.transform.URIResolver) : Void;
	
	/**
	* Get an object that will be used to resolve URIs used in
	* document().
	*
	* @return An object that implements the URIResolver interface,
	* or null.
	*/
	@:overload @:public @:abstract public function getURIResolver() : javax.xml.transform.URIResolver;
	
	/**
	* Set the output properties for the transformation.  These
	* properties will override properties set in the Templates
	* with xsl:output.
	*
	* <p>If argument to this function is null, any properties
	* previously set are removed, and the value will revert to the value
	* defined in the templates object.</p>
	*
	* <p>Pass a qualified property key name as a two-part string, the namespace
	* URI enclosed in curly braces ({}), followed by the local name. If the
	* name has a null URL, the String only contain the local name. An
	* application can safely check for a non-null URI by testing to see if the
	* first character of the name is a '{' character.</p>
	* <p>For example, if a URI and local name were obtained from an element
	* defined with &lt;xyz:foo
	* xmlns:xyz="http://xyz.foo.com/yada/baz.html"/&gt;,
	* then the qualified name would be "{http://xyz.foo.com/yada/baz.html}foo".
	* Note that no prefix is used.</p>
	* An <code>IllegalArgumentException</code> is thrown  if any of the
	* argument keys are not recognized and are not namespace qualified.
	*
	* @param oformat A set of output properties that will be
	*   used to override any of the same properties in affect
	*   for the transformation.
	*
	* @throws IllegalArgumentException When keys are not recognized and
	*   are not namespace qualified.
	*
	* @see javax.xml.transform.OutputKeys
	* @see java.util.Properties
	*
	*/
	@:overload @:public @:abstract public function setOutputProperties(oformat : java.util.Properties) : Void;
	
	/**
	* <p>Get a copy of the output properties for the transformation.</p>
	*
	* <p>The properties returned should contain properties set by the user,
	* and properties set by the stylesheet, and these properties
	* are "defaulted" by default properties specified by
	* <a href="http://www.w3.org/TR/xslt#output">section 16 of the
	* XSL Transformations (XSLT) W3C Recommendation</a>.  The properties that
	* were specifically set by the user or the stylesheet should be in the base
	* Properties list, while the XSLT default properties that were not
	* specifically set should be the default Properties list.  Thus,
	* getOutputProperties().getProperty(String key) will obtain any
	* property in that was set by {@link #setOutputProperty},
	* {@link #setOutputProperties}, in the stylesheet, <em>or</em> the default
	* properties, while
	* getOutputProperties().get(String key) will only retrieve properties
	* that were explicitly set by {@link #setOutputProperty},
	* {@link #setOutputProperties}, or in the stylesheet.</p>
	*
	* <p>Note that mutation of the Properties object returned will not
	* effect the properties that the transformer contains.</p>
	*
	* <p>If any of the argument keys are not recognized and are not
	* namespace qualified, the property will be ignored and not returned.
	* In other words the behaviour is not orthogonal with
	* {@link #setOutputProperties setOutputProperties}.</p>
	*
	* @return A copy of the set of output properties in effect for
	*   the next transformation.
	*
	* @see javax.xml.transform.OutputKeys
	* @see java.util.Properties
	* @see <a href="http://www.w3.org/TR/xslt#output">
	*   XSL Transformations (XSLT) Version 1.0</a>
	*/
	@:overload @:public @:abstract public function getOutputProperties() : java.util.Properties;
	
	/**
	* Set an output property that will be in effect for the
	* transformation.
	*
	* <p>Pass a qualified property name as a two-part string, the namespace URI
	* enclosed in curly braces ({}), followed by the local name. If the
	* name has a null URL, the String only contain the local name. An
	* application can safely check for a non-null URI by testing to see if the
	* first character of the name is a '{' character.</p>
	* <p>For example, if a URI and local name were obtained from an element
	* defined with &lt;xyz:foo
	* xmlns:xyz="http://xyz.foo.com/yada/baz.html"/&gt;,
	* then the qualified name would be "{http://xyz.foo.com/yada/baz.html}foo".
	* Note that no prefix is used.</p>
	*
	* <p>The Properties object that was passed to {@link #setOutputProperties}
	* won't be effected by calling this method.</p>
	*
	* @param name A non-null String that specifies an output
	* property name, which may be namespace qualified.
	* @param value The non-null string value of the output property.
	*
	* @throws IllegalArgumentException If the property is not supported, and is
	* not qualified with a namespace.
	*
	* @see javax.xml.transform.OutputKeys
	*/
	@:overload @:public @:abstract public function setOutputProperty(name : String, value : String) : Void;
	
	/**
	* <p>Get an output property that is in effect for the transformer.</p>
	*
	* <p>If a property has been set using {@link #setOutputProperty},
	* that value will be returned. Otherwise, if a property is explicitly
	* specified in the stylesheet, that value will be returned. If
	* the value of the property has been defaulted, that is, if no
	* value has been set explicitly either with {@link #setOutputProperty} or
	* in the stylesheet, the result may vary depending on
	* implementation and input stylesheet.</p>
	*
	* @param name A non-null String that specifies an output
	* property name, which may be namespace qualified.
	*
	* @return The string value of the output property, or null
	* if no property was found.
	*
	* @throws IllegalArgumentException If the property is not supported.
	*
	* @see javax.xml.transform.OutputKeys
	*/
	@:overload @:public @:abstract public function getOutputProperty(name : String) : String;
	
	/**
	* Set the error event listener in effect for the transformation.
	*
	* @param listener The new error listener.
	*
	* @throws IllegalArgumentException if listener is null.
	*/
	@:overload @:public @:abstract public function setErrorListener(listener : javax.xml.transform.ErrorListener) : Void;
	
	/**
	* Get the error event handler in effect for the transformation.
	* Implementations must provide a default error listener.
	*
	* @return The current error handler, which should never be null.
	*/
	@:overload @:public @:abstract public function getErrorListener() : javax.xml.transform.ErrorListener;
	
	
}
