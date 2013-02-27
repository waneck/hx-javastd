package sun.security.x509;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface CertAttrSet<T>
{
	/**
	* Encodes the attribute to the output stream in a format
	* that can be parsed by the <code>decode</code> method.
	*
	* @param out the OutputStream to encode the attribute to.
	*
	* @exception CertificateException on encoding or validity errors.
	* @exception IOException on other errors.
	*/
	@:overload public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* Sets an attribute value within this CertAttrSet.
	*
	* @param name the name of the attribute (e.g. "x509.info.key")
	* @param obj the attribute object.
	*
	* @exception CertificateException on attribute handling errors.
	* @exception IOException on other errors.
	*/
	@:overload public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Gets an attribute value for this CertAttrSet.
	*
	* @param name the name of the attribute to return.
	*
	* @exception CertificateException on attribute handling errors.
	* @exception IOException on other errors.
	*/
	@:overload public function get(name : String) : Dynamic;
	
	/**
	* Deletes an attribute value from this CertAttrSet.
	*
	* @param name the name of the attribute to delete.
	*
	* @exception CertificateException on attribute handling errors.
	* @exception IOException on other errors.
	*/
	@:overload public function delete(name : String) : Void;
	
	/**
	* Returns an enumeration of the names of the attributes existing within
	* this attribute.
	*
	* @return an enumeration of the attribute names.
	*/
	@:overload public function getElements() : java.util.Enumeration<T>;
	
	/**
	* Returns the name (identifier) of this CertAttrSet.
	*
	* @return the name of this CertAttrSet.
	*/
	@:overload public function getName() : String;
	
	
}
