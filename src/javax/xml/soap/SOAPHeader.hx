package javax.xml.soap;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface SOAPHeader extends javax.xml.soap.SOAPElement
{
	/**
	* Creates a new <code>SOAPHeaderElement</code> object initialized with the
	* specified name and adds it to this <code>SOAPHeader</code> object.
	*
	* @param name a <code>Name</code> object with the name of the new
	*        <code>SOAPHeaderElement</code> object
	* @return the new <code>SOAPHeaderElement</code> object that was
	*          inserted into this <code>SOAPHeader</code> object
	* @exception SOAPException if a SOAP error occurs
	* @see SOAPHeader#addHeaderElement(javax.xml.namespace.QName)
	*/
	@:overload @:public public function addHeaderElement(name : javax.xml.soap.Name) : javax.xml.soap.SOAPHeaderElement;
	
	/**
	* Creates a new <code>SOAPHeaderElement</code> object initialized with the
	* specified qname and adds it to this <code>SOAPHeader</code> object.
	*
	* @param qname a <code>QName</code> object with the qname of the new
	*        <code>SOAPHeaderElement</code> object
	* @return the new <code>SOAPHeaderElement</code> object that was
	*          inserted into this <code>SOAPHeader</code> object
	* @exception SOAPException if a SOAP error occurs
	* @see SOAPHeader#addHeaderElement(Name)
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public public function addHeaderElement(qname : javax.xml.namespace.QName) : javax.xml.soap.SOAPHeaderElement;
	
	/**
	* Returns an <code>Iterator</code> over all the <code>SOAPHeaderElement</code> objects
	* in this <code>SOAPHeader</code> object
	* that have the specified <i>actor</i> and that have a MustUnderstand attribute
	* whose value is equivalent to <code>true</code>.
	* <p>
	* In SOAP 1.2 the <i>env:actor</i> attribute is replaced by the <i>env:role</i>
	* attribute, but with essentially the same semantics.
	*
	* @param actor a <code>String</code> giving the URI of the <code>actor</code> / <code>role</code>
	*        for which to search
	* @return an <code>Iterator</code> object over all the
	*         <code>SOAPHeaderElement</code> objects that contain the specified
	*          <code>actor</code> / <code>role</code> and are marked as MustUnderstand
	* @see #examineHeaderElements
	* @see #extractHeaderElements
	* @see SOAPConstants#URI_SOAP_ACTOR_NEXT
	*
	* @since SAAJ 1.2
	*/
	@:require(java2) @:overload @:public public function examineMustUnderstandHeaderElements(actor : String) : java.util.Iterator<Dynamic>;
	
	/**
	* Returns an <code>Iterator</code> over all the <code>SOAPHeaderElement</code> objects
	* in this <code>SOAPHeader</code> object
	* that have the specified <i>actor</i>.
	*
	* An <i>actor</i> is a global attribute that indicates the intermediate
	* parties that should process a message before it reaches its ultimate
	* receiver. An actor receives the message and processes it before sending
	* it on to the next actor. The default actor is the ultimate intended
	* recipient for the message, so if no actor attribute is included in a
	* <code>SOAPHeader</code> object, it is sent to the ultimate receiver
	* along with the message body.
	* <p>
	* In SOAP 1.2 the <i>env:actor</i> attribute is replaced by the <i>env:role</i>
	* attribute, but with essentially the same semantics.
	*
	* @param actor a <code>String</code> giving the URI of the <code>actor</code> / <code>role</code>
	*        for which to search
	* @return an <code>Iterator</code> object over all the
	*         <code>SOAPHeaderElement</code> objects that contain the specified
	*          <code>actor</code> / <code>role</code>
	* @see #extractHeaderElements
	* @see SOAPConstants#URI_SOAP_ACTOR_NEXT
	*/
	@:overload @:public public function examineHeaderElements(actor : String) : java.util.Iterator<Dynamic>;
	
	/**
	* Returns an <code>Iterator</code> over all the <code>SOAPHeaderElement</code> objects
	* in this <code>SOAPHeader</code> object
	* that have the specified <i>actor</i> and detaches them
	* from this <code>SOAPHeader</code> object.
	* <P>
	* This method allows an actor to process the parts of the
	* <code>SOAPHeader</code> object that apply to it and to remove
	* them before passing the message on to the next actor.
	* <p>
	* In SOAP 1.2 the <i>env:actor</i> attribute is replaced by the <i>env:role</i>
	* attribute, but with essentially the same semantics.
	*
	* @param actor a <code>String</code> giving the URI of the <code>actor</code> / <code>role</code>
	*        for which to search
	* @return an <code>Iterator</code> object over all the
	*         <code>SOAPHeaderElement</code> objects that contain the specified
	*          <code>actor</code> / <code>role</code>
	*
	* @see #examineHeaderElements
	* @see SOAPConstants#URI_SOAP_ACTOR_NEXT
	*/
	@:overload @:public public function extractHeaderElements(actor : String) : java.util.Iterator<Dynamic>;
	
	/**
	* Creates a new NotUnderstood <code>SOAPHeaderElement</code> object initialized
	* with the specified name and adds it to this <code>SOAPHeader</code> object.
	* This operation is supported only by SOAP 1.2.
	*
	* @param name a <code>QName</code> object with the name of the
	*        <code>SOAPHeaderElement</code> object that was not understood.
	* @return the new <code>SOAPHeaderElement</code> object that was
	*          inserted into this <code>SOAPHeader</code> object
	* @exception SOAPException if a SOAP error occurs.
	* @exception UnsupportedOperationException if this is a SOAP 1.1 Header.
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public public function addNotUnderstoodHeaderElement(name : javax.xml.namespace.QName) : javax.xml.soap.SOAPHeaderElement;
	
	/**
	* Creates a new Upgrade <code>SOAPHeaderElement</code> object initialized
	* with the specified List of supported SOAP URIs and adds it to this
	* <code>SOAPHeader</code> object.
	* This operation is supported on both SOAP 1.1 and SOAP 1.2 header.
	*
	* @param supportedSOAPURIs an <code>Iterator</code> object with the URIs of SOAP
	*          versions supported.
	* @return the new <code>SOAPHeaderElement</code> object that was
	*          inserted into this <code>SOAPHeader</code> object
	* @exception SOAPException if a SOAP error occurs.
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public public function addUpgradeHeaderElement(supportedSOAPURIs : java.util.Iterator<Dynamic>) : javax.xml.soap.SOAPHeaderElement;
	
	/**
	* Creates a new Upgrade <code>SOAPHeaderElement</code> object initialized
	* with the specified array of supported SOAP URIs and adds it to this
	* <code>SOAPHeader</code> object.
	* This operation is supported on both SOAP 1.1 and SOAP 1.2 header.
	*
	* @param  supportedSoapUris an array of the URIs of SOAP versions supported.
	* @return the new <code>SOAPHeaderElement</code> object that was
	*          inserted into this <code>SOAPHeader</code> object
	* @exception SOAPException if a SOAP error occurs.
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public public function addUpgradeHeaderElement(supportedSoapUris : java.NativeArray<String>) : javax.xml.soap.SOAPHeaderElement;
	
	/**
	* Creates a new Upgrade <code>SOAPHeaderElement</code> object initialized
	* with the specified supported SOAP URI and adds it to this
	* <code>SOAPHeader</code> object.
	* This operation is supported on both SOAP 1.1 and SOAP 1.2 header.
	*
	* @param supportedSoapUri the URI of SOAP the version that is supported.
	* @return the new <code>SOAPHeaderElement</code> object that was
	*          inserted into this <code>SOAPHeader</code> object
	* @exception SOAPException if a SOAP error occurs.
	* @since SAAJ 1.3
	*/
	@:require(java3) @:overload @:public public function addUpgradeHeaderElement(supportedSoapUri : String) : javax.xml.soap.SOAPHeaderElement;
	
	/**
	* Returns an <code>Iterator</code> over all the <code>SOAPHeaderElement</code> objects
	* in this <code>SOAPHeader</code> object.
	*
	* @return an <code>Iterator</code> object over all the
	*          <code>SOAPHeaderElement</code> objects contained by this
	*          <code>SOAPHeader</code>
	* @see #extractAllHeaderElements
	*
	* @since SAAJ 1.2
	*/
	@:require(java2) @:overload @:public public function examineAllHeaderElements() : java.util.Iterator<Dynamic>;
	
	/**
	* Returns an <code>Iterator</code> over all the <code>SOAPHeaderElement</code> objects
	* in this <code>SOAPHeader</code> object and detaches them
	* from this <code>SOAPHeader</code> object.
	*
	* @return an <code>Iterator</code> object over all the
	*          <code>SOAPHeaderElement</code> objects contained by this
	*          <code>SOAPHeader</code>
	*
	* @see #examineAllHeaderElements
	*
	* @since SAAJ 1.2
	*/
	@:require(java2) @:overload @:public public function extractAllHeaderElements() : java.util.Iterator<Dynamic>;
	
	
}
