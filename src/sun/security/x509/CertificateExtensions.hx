package sun.security.x509;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class defines the Extensions attribute for the Certificate.
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see CertAttrSet
*/
extern class CertificateExtensions implements sun.security.x509.CertAttrSet<sun.security.x509.Extension>
{
	/**
	* Identifier for this attribute, to be used with the
	* get, set, delete methods of Certificate, x509 type.
	*/
	public static var IDENT(default, null) : String;
	
	/**
	* name
	*/
	public static var NAME(default, null) : String;
	
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create the object, decoding the values from the passed DER stream.
	*
	* @param in the DerInputStream to read the Extension from.
	* @exception IOException on decoding errors.
	*/
	@:overload public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	* Encode the extensions in DER form to the stream, setting
	* the context specific tag as needed in the X.509 v3 certificate.
	*
	* @param out the DerOutputStream to marshal the contents to.
	* @exception CertificateException on encoding errors.
	* @exception IOException on errors.
	*/
	@:overload public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* Encode the extensions in DER form to the stream.
	*
	* @param out the DerOutputStream to marshal the contents to.
	* @param isCertReq if true then no context specific tag is added.
	* @exception CertificateException on encoding errors.
	* @exception IOException on errors.
	*/
	@:overload public function encode(out : java.io.OutputStream, isCertReq : Bool) : Void;
	
	/**
	* Set the attribute value.
	* @param name the extension name used in the cache.
	* @param obj the object to set.
	* @exception IOException if the object could not be cached.
	*/
	@:overload public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Get the attribute value.
	* @param name the extension name used in the lookup.
	* @exception IOException if named extension is not found.
	*/
	@:overload public function get(name : String) : Dynamic;
	
	/**
	* Delete the attribute value.
	* @param name the extension name used in the lookup.
	* @exception IOException if named extension is not found.
	*/
	@:overload public function delete(name : String) : Void;
	
	@:overload public function getNameByOid(oid : sun.security.util.ObjectIdentifier) : String;
	
	/**
	* Return an enumeration of names of attributes existing within this
	* attribute.
	*/
	@:overload public function getElements() : java.util.Enumeration<sun.security.x509.Extension>;
	
	/**
	* Return a collection view of the extensions.
	* @return a collection view of the extensions in this Certificate.
	*/
	@:overload public function getAllExtensions() : java.util.Collection<sun.security.x509.Extension>;
	
	@:overload public function getUnparseableExtensions() : java.util.Map<String, sun.security.x509.Extension>;
	
	/**
	* Return the name of this attribute.
	*/
	@:overload public function getName() : String;
	
	/**
	* Return true if a critical extension is found that is
	* not supported, otherwise return false.
	*/
	@:overload public function hasUnsupportedCriticalExtension() : Bool;
	
	/**
	* Compares this CertificateExtensions for equality with the specified
	* object. If the <code>other</code> object is an
	* <code>instanceof</code> <code>CertificateExtensions</code>, then
	* all the entries are compared with the entries from this.
	*
	* @param other the object to test for equality with this
	* CertificateExtensions.
	* @return true iff all the entries match that of the Other,
	* false otherwise.
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns a hashcode value for this CertificateExtensions.
	*
	* @return the hashcode value.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string representation of this <tt>CertificateExtensions</tt>
	* object in the form of a set of entries, enclosed in braces and separated
	* by the ASCII characters "<tt>,&nbsp;</tt>" (comma and space).
	* <p>Overrides to <tt>toString</tt> method of <tt>Object</tt>.
	*
	* @return  a string representation of this CertificateExtensions.
	*/
	@:overload public function toString() : String;
	
	
}
@:internal extern class UnparseableExtension extends sun.security.x509.Extension
{
	@:overload public function new(ext : sun.security.x509.Extension, why : java.lang.Throwable) : Void;
	
	@:overload override public function toString() : String;
	
	
}
