package javax.xml.crypto.dsig;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
* $Id: Reference.java,v 1.9 2005/05/10 16:03:46 mullan Exp $
*/
extern interface Reference extends javax.xml.crypto.URIReference extends javax.xml.crypto.XMLStructure
{
	/**
	* Returns an {@link java.util.Collections#unmodifiableList unmodifiable
	* list} of {@link Transform}s that are contained in this
	* <code>Reference</code>.
	*
	* @return an unmodifiable list of <code>Transform</code>s
	*    (may be empty but never <code>null</code>)
	*/
	@:overload public function getTransforms() : java.util.List<Dynamic>;
	
	/**
	* Returns the digest method of this <code>Reference</code>.
	*
	* @return the digest method
	*/
	@:overload public function getDigestMethod() : javax.xml.crypto.dsig.DigestMethod;
	
	/**
	* Returns the optional <code>Id</code> attribute of this
	* <code>Reference</code>, which permits this reference to be
	* referenced from elsewhere.
	*
	* @return the <code>Id</code> attribute (may be <code>null</code> if not
	*    specified)
	*/
	@:overload public function getId() : String;
	
	/**
	* Returns the digest value of this <code>Reference</code>.
	*
	* @return the raw digest value, or <code>null</code> if this reference has
	*    not been digested yet. Each invocation of this method returns a new
	*    clone to protect against subsequent modification.
	*/
	@:overload public function getDigestValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the calculated digest value of this <code>Reference</code>
	* after a validation operation. This method is useful for debugging if
	* the reference fails to validate.
	*
	* @return the calculated digest value, or <code>null</code> if this
	*    reference has not been validated yet. Each invocation of this method
	*    returns a new clone to protect against subsequent modification.
	*/
	@:overload public function getCalculatedDigestValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Validates this reference. This method verifies the digest of this
	* reference.
	*
	* <p>This method only validates the reference the first time it is
	* invoked. On subsequent invocations, it returns a cached result.
	*
	* @return <code>true</code> if this reference was validated successfully;
	*    <code>false</code> otherwise
	* @param validateContext the validating context
	* @throws NullPointerException if <code>validateContext</code> is
	*    <code>null</code>
	* @throws XMLSignatureException if an unexpected exception occurs while
	*    validating the reference
	*/
	@:overload public function validate(validateContext : javax.xml.crypto.dsig.XMLValidateContext) : Bool;
	
	/**
	* Returns the dereferenced data, if
	* <a href="XMLSignContext.html#Supported Properties">reference caching</a>
	* is enabled. This is the result of dereferencing the URI of this
	* reference during a validation or generation operation.
	*
	* @return the dereferenced data, or <code>null</code> if reference
	*    caching is not enabled or this reference has not been generated or
	*    validated
	*/
	@:overload public function getDereferencedData() : javax.xml.crypto.Data;
	
	/**
	* Returns the pre-digested input stream, if
	* <a href="XMLSignContext.html#Supported Properties">reference caching</a>
	* is enabled. This is the input to the digest operation during a
	* validation or signing operation.
	*
	* @return an input stream containing the pre-digested input, or
	*    <code>null</code> if reference caching is not enabled or this
	*    reference has not been generated or validated
	*/
	@:overload public function getDigestInputStream() : java.io.InputStream;
	
	
}
