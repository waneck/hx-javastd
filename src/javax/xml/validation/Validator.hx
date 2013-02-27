package javax.xml.validation;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class Validator
{
	/**
	* Constructor for derived classes.
	*
	* <p>The constructor does nothing.</p>
	*
	* <p>Derived classes must create {@link Validator} objects that have
	* <code>null</code> {@link ErrorHandler} and
	* <code>null</code> {@link LSResourceResolver}.
	* </p>
	*/
	@:overload private function new() : Void;
	
	/**
	* <p>Reset this <code>Validator</code> to its original configuration.</p>
	*
	* <p><code>Validator</code> is reset to the same state as when it was created with
	* {@link Schema#newValidator()}.
	* <code>reset()</code> is designed to allow the reuse of existing <code>Validator</code>s
	* thus saving resources associated with the creation of new <code>Validator</code>s.</p>
	*
	* <p>The reset <code>Validator</code> is not guaranteed to have the same {@link LSResourceResolver} or {@link ErrorHandler}
	* <code>Object</code>s, e.g. {@link Object#equals(Object obj)}.  It is guaranteed to have a functionally equal
	* <code>LSResourceResolver</code> and <code>ErrorHandler</code>.</p>
	*/
	@:overload @:abstract public function reset() : Void;
	
	/**
	* Validates the specified input.
	*
	* <p>This is just a convenience method for
	* {@link #validate(Source source, Result result)}
	* with <code>result</code> of <code>null</code>.</p>
	*
	* @param source
	*      XML to be validated. Must be an XML document or
	*      XML element and must not be null. For backwards compatibility,
	*      the results of attempting to validate anything other than
	*      a document or element are implementation-dependent.
	*      Implementations must either recognize and process the input
	*      or throw an IllegalArgumentException.
	*
	* @throws IllegalArgumentException
	*      If the <code>Source</code>
	*      is an XML artifact that the implementation cannot
	*      validate (for example, a processing instruction).
	*
	* @throws SAXException
	*      If the {@link ErrorHandler} throws a {@link SAXException} or
	*      if a fatal error is found and the {@link ErrorHandler} returns
	*      normally.
	*
	* @throws IOException
	*      If the validator is processing a
	*      {@link javax.xml.transform.sax.SAXSource} and the
	*      underlying {@link org.xml.sax.XMLReader} throws an
	*      {@link IOException}.
	*
	*
	* @throws NullPointerException If <code>source</code> is
	*   <code>null</code>.
	*
	* @see #validate(Source source, Result result)
	*/
	@:overload public function validate(source : javax.xml.transform.Source) : Void;
	
	/**
	* <p>Validates the specified input and send the augmented validation
	* result to the specified output.</p>
	*
	* <p>This method places the following restrictions on the types of
	* the {@link Source}/{@link Result} accepted.</p>
	*
	* <table border=1>
	* <thead>
	*  <tr>
	*   <th colspan="5"><code>Source</code> / <code>Result</code> Accepted</th>
	*  </tr>
	*  <tr>
	*   <th></th>
	*   <th>{@link javax.xml.transform.stream.StreamSource}</th>
	*   <th>{@link javax.xml.transform.sax.SAXSource}</th>
	*   <th>{@link javax.xml.transform.dom.DOMSource}</th>
	*   <th>{@link javax.xml.transform.stax.StAXSource}</th>
	*  </tr>
	* </thead>
	* <tbody align="center">
	*  <tr>
	*   <td><code>null</code></td>
	*   <td>OK</td>
	*   <td>OK</td>
	*   <td>OK</td>
	*   <td>OK</td>
	*  </tr>
	*  <tr>
	*   <th>{@link javax.xml.transform.stream.StreamResult}</th>
	*   <td>OK</td>
	*   <td><code>IllegalArgumentException</code></td>
	*   <td><code>IllegalArgumentException</code></td>
	*   <td><code>IllegalArgumentException</code></td>
	*  </tr>
	*  <tr>
	*   <th>{@link javax.xml.transform.sax.SAXResult}</th>
	*   <td><code>IllegalArgumentException</code></td>
	*   <td>OK</td>
	*   <td><code>IllegalArgumentException</code></td>
	*   <td><code>IllegalArgumentException</code></td>
	*  </tr>
	*  <tr>
	*   <th>{@link javax.xml.transform.dom.DOMResult}</th>
	*   <td><code>IllegalArgumentException</code></td>
	*   <td><code>IllegalArgumentException</code></td>
	*   <td>OK</td>
	*   <td><code>IllegalArgumentException</code></td>
	*  </tr>
	*  <tr>
	*   <th>{@link javax.xml.transform.stax.StAXResult}</th>
	*   <td><code>IllegalArgumentException</code></td>
	*   <td><code>IllegalArgumentException</code></td>
	*   <td><code>IllegalArgumentException</code></td>
	*   <td>OK</td>
	*  </tr>
	* </tbody>
	* </table>
	*
	* <p>To validate one <code>Source</code> into another kind of
	* <code>Result</code>, use the identity transformer (see
	* {@link javax.xml.transform.TransformerFactory#newTransformer()}).</p>
	*
	* <p>Errors found during the validation is sent to the specified
	* {@link ErrorHandler}.</p>
	*
	* <p>If a document is valid, or if a document contains some errors
	* but none of them were fatal and the <code>ErrorHandler</code> didn't
	* throw any exception, then the method returns normally.</p>
	*
	* @param source
	*      XML to be validated. Must be an XML document or
	*      XML element and must not be null. For backwards compatibility,
	*      the results of attempting to validate anything other than
	*      a document or element are implementation-dependent.
	*      Implementations must either recognize and process the input
	*      or throw an IllegalArgumentException.
	*
	* @param result
	*      The <code>Result</code> object that receives (possibly augmented)
	*      XML. This parameter can be null if the caller is not interested
	*      in it.
	*
	*      Note that when a <code>DOMResult</code> is used,
	*      a validator might just pass the same DOM node from
	*      <code>DOMSource</code> to <code>DOMResult</code>
	*      (in which case <code>source.getNode()==result.getNode()</code>),
	*      it might copy the entire DOM tree, or it might alter the
	*      node given by the source.
	*
	* @throws IllegalArgumentException
	*      If the <code>Result</code> type doesn't match the
	*      <code>Source</code> type of if the <code>Source</code>
	*      is an XML artifact that the implementation cannot
	*      validate (for example, a processing instruction).
	* @throws SAXException
	*      If the <code>ErrorHandler</code> throws a
	*      <code>SAXException</code> or
	*      if a fatal error is found and the <code>ErrorHandler</code> returns
	*      normally.
	* @throws IOException
	*      If the validator is processing a
	*      <code>SAXSource</code> and the
	*      underlying {@link org.xml.sax.XMLReader} throws an
	*      <code>IOException</code>.
	* @throws NullPointerException
	*      If the <code>source</code> parameter is <code>null</code>.
	*
	* @see #validate(Source source)
	*/
	@:overload @:abstract public function validate(source : javax.xml.transform.Source, result : javax.xml.transform.Result) : Void;
	
	/**
	* Sets the {@link ErrorHandler} to receive errors encountered
	* during the <code>validate</code> method invocation.
	*
	* <p>
	* Error handler can be used to customize the error handling process
	* during a validation. When an {@link ErrorHandler} is set,
	* errors found during the validation will be first sent
	* to the {@link ErrorHandler}.
	*
	* <p>
	* The error handler can abort further validation immediately
	* by throwing {@link SAXException} from the handler. Or for example
	* it can print an error to the screen and try to continue the
	* validation by returning normally from the {@link ErrorHandler}
	*
	* <p>
	* If any {@link Throwable} is thrown from an {@link ErrorHandler},
	* the caller of the <code>validate</code> method will be thrown
	* the same {@link Throwable} object.
	*
	* <p>
	* {@link Validator} is not allowed to
	* throw {@link SAXException} without first reporting it to
	* {@link ErrorHandler}.
	*
	* <p>
	* When the {@link ErrorHandler} is null, the implementation will
	* behave as if the following {@link ErrorHandler} is set:
	* <pre>
	* class DraconianErrorHandler implements {@link ErrorHandler} {
	*     public void fatalError( {@link org.xml.sax.SAXParseException} e ) throws {@link SAXException} {
	*         throw e;
	*     }
	*     public void error( {@link org.xml.sax.SAXParseException} e ) throws {@link SAXException} {
	*         throw e;
	*     }
	*     public void warning( {@link org.xml.sax.SAXParseException} e ) throws {@link SAXException} {
	*         // noop
	*     }
	* }
	* </pre>
	*
	* <p>
	* When a new {@link Validator} object is created, initially
	* this field is set to null.
	*
	* @param   errorHandler
	*      A new error handler to be set. This parameter can be null.
	*/
	@:overload @:abstract public function setErrorHandler(errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Gets the current {@link ErrorHandler} set to this {@link Validator}.
	*
	* @return
	*      This method returns the object that was last set through
	*      the {@link #setErrorHandler(ErrorHandler)} method, or null
	*      if that method has never been called since this {@link Validator}
	*      has created.
	*
	* @see #setErrorHandler(ErrorHandler)
	*/
	@:overload @:abstract public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* Sets the {@link LSResourceResolver} to customize
	* resource resolution while in a validation episode.
	*
	* <p>
	* {@link Validator} uses a {@link LSResourceResolver}
	* when it needs to locate external resources while a validation,
	* although exactly what constitutes "locating external resources" is
	* up to each schema language.
	*
	* <p>
	* When the {@link LSResourceResolver} is null, the implementation will
	* behave as if the following {@link LSResourceResolver} is set:
	* <pre>
	* class DumbLSResourceResolver implements {@link LSResourceResolver} {
	*     public {@link org.w3c.dom.ls.LSInput} resolveResource(
	*         String publicId, String systemId, String baseURI) {
	*
	*         return null; // always return null
	*     }
	* }
	* </pre>
	*
	* <p>
	* If a {@link LSResourceResolver} throws a {@link RuntimeException}
	*  (or instances of its derived classes),
	* then the {@link Validator} will abort the parsing and
	* the caller of the <code>validate</code> method will receive
	* the same {@link RuntimeException}.
	*
	* <p>
	* When a new {@link Validator} object is created, initially
	* this field is set to null.
	*
	* @param   resourceResolver
	*      A new resource resolver to be set. This parameter can be null.
	*/
	@:overload @:abstract public function setResourceResolver(resourceResolver : org.w3c.dom.ls.LSResourceResolver) : Void;
	
	/**
	* Gets the current {@link LSResourceResolver} set to this {@link Validator}.
	*
	* @return
	*      This method returns the object that was last set through
	*      the {@link #setResourceResolver(LSResourceResolver)} method, or null
	*      if that method has never been called since this {@link Validator}
	*      has created.
	*
	* @see #setErrorHandler(ErrorHandler)
	*/
	@:overload @:abstract public function getResourceResolver() : org.w3c.dom.ls.LSResourceResolver;
	
	/**
	* Look up the value of a feature flag.
	*
	* <p>The feature name is any fully-qualified URI.  It is
	* possible for a {@link Validator} to recognize a feature name but
	* temporarily be unable to return its value.
	* Some feature values may be available only in specific
	* contexts, such as before, during, or after a validation.
	*
	* <p>Implementors are free (and encouraged) to invent their own features,
	* using names built on their own URIs.</p>
	*
	* @param name The feature name, which is a non-null fully-qualified URI.
	*
	* @return The current value of the feature (true or false).
	*
	* @throws SAXNotRecognizedException If the feature
	*   value can't be assigned or retrieved.
	* @throws SAXNotSupportedException When the
	*   {@link Validator} recognizes the feature name but
	*   cannot determine its value at this time.
	* @throws NullPointerException
	*   When the name parameter is null.
	*
	* @see #setFeature(String, boolean)
	*/
	@:overload public function getFeature(name : String) : Bool;
	
	/**
	* Set the value of a feature flag.
	*
	* <p>
	* Feature can be used to control the way a {@link Validator}
	* parses schemas, although {@link Validator}s are not required
	* to recognize any specific feature names.</p>
	*
	* <p>The feature name is any fully-qualified URI.  It is
	* possible for a {@link Validator} to expose a feature value but
	* to be unable to change the current value.
	* Some feature values may be immutable or mutable only
	* in specific contexts, such as before, during, or after
	* a validation.</p>
	*
	* @param name The feature name, which is a non-null fully-qualified URI.
	* @param value The requested value of the feature (true or false).
	*
	* @throws SAXNotRecognizedException If the feature
	*   value can't be assigned or retrieved.
	* @throws SAXNotSupportedException When the
	*   {@link Validator} recognizes the feature name but
	*   cannot set the requested value.
	* @throws NullPointerException
	*   When the name parameter is null.
	*
	* @see #getFeature(String)
	*/
	@:overload public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* Set the value of a property.
	*
	* <p>The property name is any fully-qualified URI.  It is
	* possible for a {@link Validator} to recognize a property name but
	* to be unable to change the current value.
	* Some property values may be immutable or mutable only
	* in specific contexts, such as before, during, or after
	* a validation.</p>
	*
	* <p>{@link Validator}s are not required to recognize setting
	* any specific property names.</p>
	*
	* @param name The property name, which is a non-null fully-qualified URI.
	* @param object The requested value for the property.
	*
	* @throws SAXNotRecognizedException If the property
	*   value can't be assigned or retrieved.
	* @throws SAXNotSupportedException When the
	*   {@link Validator} recognizes the property name but
	*   cannot set the requested value.
	* @throws NullPointerException
	*   When the name parameter is null.
	*/
	@:overload public function setProperty(name : String, object : Dynamic) : Void;
	
	/**
	* Look up the value of a property.
	*
	* <p>The property name is any fully-qualified URI.  It is
	* possible for a {@link Validator} to recognize a property name but
	* temporarily be unable to return its value.
	* Some property values may be available only in specific
	* contexts, such as before, during, or after a validation.</p>
	*
	* <p>{@link Validator}s are not required to recognize any specific
	* property names.</p>
	*
	* <p>Implementors are free (and encouraged) to invent their own properties,
	* using names built on their own URIs.</p>
	*
	* @param name The property name, which is a non-null fully-qualified URI.
	*
	* @return The current value of the property.
	*
	* @throws SAXNotRecognizedException If the property
	*   value can't be assigned or retrieved.
	* @throws SAXNotSupportedException When the
	*   XMLReader recognizes the property name but
	*   cannot determine its value at this time.
	* @throws NullPointerException
	*   When the name parameter is null.
	*
	* @see #setProperty(String, Object)
	*/
	@:overload public function getProperty(name : String) : Dynamic;
	
	
}