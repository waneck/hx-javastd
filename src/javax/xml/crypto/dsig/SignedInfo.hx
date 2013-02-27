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
* $Id: SignedInfo.java,v 1.7 2005/05/10 16:03:47 mullan Exp $
*/
extern interface SignedInfo extends javax.xml.crypto.XMLStructure
{
	/**
	* Returns the canonicalization method of this <code>SignedInfo</code>.
	*
	* @return the canonicalization method
	*/
	@:overload public function getCanonicalizationMethod() : javax.xml.crypto.dsig.CanonicalizationMethod;
	
	/**
	* Returns the signature method of this <code>SignedInfo</code>.
	*
	* @return the signature method
	*/
	@:overload public function getSignatureMethod() : javax.xml.crypto.dsig.SignatureMethod;
	
	/**
	* Returns an {@link java.util.Collections#unmodifiableList
	* unmodifiable list} of one or more {@link Reference}s.
	*
	* @return an unmodifiable list of one or more {@link Reference}s
	*/
	@:overload public function getReferences() : java.util.List<Dynamic>;
	
	/**
	* Returns the optional <code>Id</code> attribute of this
	* <code>SignedInfo</code>.
	*
	* @return the id (may be <code>null</code> if not specified)
	*/
	@:overload public function getId() : String;
	
	/**
	* Returns the canonicalized signed info bytes after a signing or
	* validation operation. This method is useful for debugging.
	*
	* @return an <code>InputStream</code> containing the canonicalized bytes,
	*    or <code>null</code> if this <code>SignedInfo</code> has not been
	*    signed or validated yet
	*/
	@:overload public function getCanonicalizedData() : java.io.InputStream;
	
	
}
