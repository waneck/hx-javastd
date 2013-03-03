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
* $Id: TransformerImpl.java,v 1.10 2007/06/13 01:57:09 joehw Exp $
*/
extern class TransformerImpl extends javax.xml.transform.Transformer implements com.sun.org.apache.xalan.internal.xsltc.DOMCache implements javax.xml.transform.ErrorListener
{
	@:overload @:protected private function new(outputProperties : java.util.Properties, indentNumber : Int, tfactory : com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl) : Void;
	
	@:overload @:protected private function new(translet : com.sun.org.apache.xalan.internal.xsltc.Translet, outputProperties : java.util.Properties, indentNumber : Int, tfactory : com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl) : Void;
	
	/**
	* Return the state of the secure processing feature.
	*/
	@:overload @:public public function isSecureProcessing() : Bool;
	
	/**
	* Set the state of the secure processing feature.
	*/
	@:overload @:public public function setSecureProcessing(flag : Bool) : Void;
	
	/**
	* Return the state of the services mechanism feature.
	*/
	@:overload @:public public function useServicesMechnism() : Bool;
	
	/**
	* Set the state of the services mechanism feature.
	*/
	@:overload @:public public function setServicesMechnism(flag : Bool) : Void;
	
	/**
	* Returns the translet wrapped inside this Transformer or
	* null if this is the identity transform.
	*/
	@:overload @:protected private function getTranslet() : com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet;
	
	@:overload @:public public function isIdentity() : Bool;
	
	/**
	* Implements JAXP's Transformer.transform()
	*
	* @param source Contains the input XML document
	* @param result Will contain the output from the transformation
	* @throws TransformerException
	*/
	@:overload @:public override public function transform(source : javax.xml.transform.Source, result : javax.xml.transform.Result) : Void;
	
	/**
	* Create an output handler for the transformation output based on
	* the type and contents of the TrAX Result object passed to the
	* transform() method.
	*/
	@:overload @:public public function getOutputHandler(result : javax.xml.transform.Result) : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	/**
	* Set the internal DOM that will be used for the next transformation
	*/
	@:overload @:protected private function setDOM(dom : com.sun.org.apache.xalan.internal.xsltc.DOM) : Void;
	
	/**
	* Returns the {@link com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl}
	* object that create this <code>Transformer</code>.
	*/
	@:overload @:protected private function getTransformerFactory() : com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl;
	
	/**
	* Returns the {@link com.sun.org.apache.xalan.internal.xsltc.runtime.output.TransletOutputHandlerFactory}
	* object that create the <code>TransletOutputHandler</code>.
	*/
	@:overload @:protected private function getTransletOutputHandlerFactory() : com.sun.org.apache.xalan.internal.xsltc.runtime.output.TransletOutputHandlerFactory;
	
	/**
	* Implements JAXP's Transformer.getErrorListener()
	* Get the error event handler in effect for the transformation.
	*
	* @return The error event handler currently in effect
	*/
	@:overload @:public override public function getErrorListener() : javax.xml.transform.ErrorListener;
	
	/**
	* Implements JAXP's Transformer.setErrorListener()
	* Set the error event listener in effect for the transformation.
	* Register a message handler in the translet in order to forward
	* xsl:messages to error listener.
	*
	* @param listener The error event listener to use
	* @throws IllegalArgumentException
	*/
	@:overload @:public override public function setErrorListener(listener : javax.xml.transform.ErrorListener) : Void;
	
	/**
	* Implements JAXP's Transformer.getOutputProperties().
	* Returns a copy of the output properties for the transformation. This is
	* a set of layered properties. The first layer contains properties set by
	* calls to setOutputProperty() and setOutputProperties() on this class,
	* and the output settings defined in the stylesheet's <xsl:output>
	* element makes up the second level, while the default XSLT output
	* settings are returned on the third level.
	*
	* @return Properties in effect for this Transformer
	*/
	@:overload @:public override public function getOutputProperties() : java.util.Properties;
	
	/**
	* Implements JAXP's Transformer.getOutputProperty().
	* Get an output property that is in effect for the transformation. The
	* property specified may be a property that was set with setOutputProperty,
	* or it may be a property specified in the stylesheet.
	*
	* @param name A non-null string that contains the name of the property
	* @throws IllegalArgumentException if the property name is not known
	*/
	@:overload @:public override public function getOutputProperty(name : String) : String;
	
	/**
	* Implements JAXP's Transformer.setOutputProperties().
	* Set the output properties for the transformation. These properties
	* will override properties set in the Templates with xsl:output.
	* Unrecognised properties will be quitely ignored.
	*
	* @param properties The properties to use for the Transformer
	* @throws IllegalArgumentException Never, errors are ignored
	*/
	@:overload @:public override public function setOutputProperties(properties : java.util.Properties) : Void;
	
	/**
	* Implements JAXP's Transformer.setOutputProperty().
	* Get an output property that is in effect for the transformation. The
	* property specified may be a property that was set with
	* setOutputProperty(), or it may be a property specified in the stylesheet.
	*
	* @param name The name of the property to set
	* @param value The value to assign to the property
	* @throws IllegalArgumentException Never, errors are ignored
	*/
	@:overload @:public override public function setOutputProperty(name : String, value : String) : Void;
	
	/**
	* This method is used to pass any properties to the output handler
	* when running the identity transform.
	*/
	@:overload @:public public function transferOutputProperties(handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	/**
	* Implements JAXP's Transformer.setParameter()
	* Add a parameter for the transformation. The parameter is simply passed
	* on to the translet - no validation is performed - so any unused
	* parameters are quitely ignored by the translet.
	*
	* @param name The name of the parameter
	* @param value The value to assign to the parameter
	*/
	@:overload @:public override public function setParameter(name : String, value : Dynamic) : Void;
	
	/**
	* Implements JAXP's Transformer.clearParameters()
	* Clear all parameters set with setParameter. Clears the translet's
	* parameter stack.
	*/
	@:overload @:public override public function clearParameters() : Void;
	
	/**
	* Implements JAXP's Transformer.getParameter()
	* Returns the value of a given parameter. Note that the translet will not
	* keep values for parameters that were not defined in the stylesheet.
	*
	* @param name The name of the parameter
	* @return An object that contains the value assigned to the parameter
	*/
	@:overload @:public @:final override public function getParameter(name : String) : Dynamic;
	
	/**
	* Implements JAXP's Transformer.getURIResolver()
	* Set the object currently used to resolve URIs used in document().
	*
	* @return  The URLResolver object currently in use
	*/
	@:overload @:public override public function getURIResolver() : javax.xml.transform.URIResolver;
	
	/**
	* Implements JAXP's Transformer.setURIResolver()
	* Set an object that will be used to resolve URIs used in document().
	*
	* @param resolver The URIResolver to use in document()
	*/
	@:overload @:public override public function setURIResolver(resolver : javax.xml.transform.URIResolver) : Void;
	
	/**
	* This class should only be used as a DOMCache for the translet if the
	* URIResolver has been set.
	*
	* The method implements XSLTC's DOMCache interface, which is used to
	* plug in an external document loader into a translet. This method acts
	* as an adapter between TrAX's URIResolver interface and XSLTC's
	* DOMCache interface. This approach is simple, but removes the
	* possibility of using external document caches with XSLTC.
	*
	* @param baseURI The base URI used by the document call.
	* @param href The href argument passed to the document function.
	* @param translet A reference to the translet requesting the document
	*/
	@:overload @:public public function retrieveDocument(baseURI : String, href : String, translet : com.sun.org.apache.xalan.internal.xsltc.Translet) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	/**
	* Receive notification of a recoverable error.
	* The transformer must continue to provide normal parsing events after
	* invoking this method. It should still be possible for the application
	* to process the document through to the end.
	*
	* @param e The warning information encapsulated in a transformer
	* exception.
	* @throws TransformerException if the application chooses to discontinue
	* the transformation (always does in our case).
	*/
	@:overload @:public public function error(e : javax.xml.transform.TransformerException) : Void;
	
	/**
	* Receive notification of a non-recoverable error.
	* The application must assume that the transformation cannot continue
	* after the Transformer has invoked this method, and should continue
	* (if at all) only to collect addition error messages. In fact,
	* Transformers are free to stop reporting events once this method has
	* been invoked.
	*
	* @param e The warning information encapsulated in a transformer
	* exception.
	* @throws TransformerException if the application chooses to discontinue
	* the transformation (always does in our case).
	*/
	@:overload @:public public function fatalError(e : javax.xml.transform.TransformerException) : Void;
	
	/**
	* Receive notification of a warning.
	* Transformers can use this method to report conditions that are not
	* errors or fatal errors. The default behaviour is to take no action.
	* After invoking this method, the Transformer must continue with the
	* transformation. It should still be possible for the application to
	* process the document through to the end.
	*
	* @param e The warning information encapsulated in a transformer
	* exception.
	* @throws TransformerException if the application chooses to discontinue
	* the transformation (never does in our case).
	*/
	@:overload @:public public function warning(e : javax.xml.transform.TransformerException) : Void;
	
	/**
	* This method resets  the Transformer to its original configuration
	* Transformer code is reset to the same state it was when it was
	* created
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function reset() : Void;
	
	
}
/**
* This class wraps an ErrorListener into a MessageHandler in order to
* capture messages reported via xsl:message.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$trax$TransformerImpl$MessageHandler') @:internal extern class TransformerImpl_MessageHandler extends com.sun.org.apache.xalan.internal.xsltc.runtime.MessageHandler
{
	@:overload @:public public function new(errorListener : javax.xml.transform.ErrorListener) : Void;
	
	@:overload @:public override public function displayMessage(msg : String) : Void;
	
	
}
