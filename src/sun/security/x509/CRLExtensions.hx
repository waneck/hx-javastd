package sun.security.x509;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class CRLExtensions
{
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create the object, decoding the values from the passed DER stream.
	*
	* @param in the DerInputStream to read the Extension from, i.e. the
	*        sequence of extensions.
	* @exception CRLException on decoding errors.
	*/
	@:overload public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	* Encode the extensions in DER form to the stream.
	*
	* @param out the DerOutputStream to marshal the contents to.
	* @param isExplicit the tag indicating whether this is an entry
	* extension (false) or a CRL extension (true).
	* @exception CRLException on encoding errors.
	*/
	@:overload public function encode(out : java.io.OutputStream, isExplicit : Bool) : Void;
	
	/**
	* Get the extension with this alias.
	*
	* @param alias the identifier string for the extension to retrieve.
	*/
	@:overload public function get(alias : String) : sun.security.x509.Extension;
	
	/**
	* Set the extension value with this alias.
	*
	* @param alias the identifier string for the extension to set.
	* @param obj the Object to set the extension identified by the
	*        alias.
	*/
	@:overload public function set(alias : String, obj : Dynamic) : Void;
	
	/**
	* Delete the extension value with this alias.
	*
	* @param alias the identifier string for the extension to delete.
	*/
	@:overload public function delete(alias : String) : Void;
	
	/**
	* Return an enumeration of the extensions.
	* @return an enumeration of the extensions in this CRL.
	*/
	@:overload public function getElements() : java.util.Enumeration<sun.security.x509.Extension>;
	
	/**
	* Return a collection view of the extensions.
	* @return a collection view of the extensions in this CRL.
	*/
	@:overload public function getAllExtensions() : java.util.Collection<sun.security.x509.Extension>;
	
	/**
	* Return true if a critical extension is found that is
	* not supported, otherwise return false.
	*/
	@:overload public function hasUnsupportedCriticalExtension() : Bool;
	
	/**
	* Compares this CRLExtensions for equality with the specified
	* object. If the <code>other</code> object is an
	* <code>instanceof</code> <code>CRLExtensions</code>, then
	* all the entries are compared with the entries from this.
	*
	* @param other the object to test for equality with this CRLExtensions.
	* @return true iff all the entries match that of the Other,
	* false otherwise.
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns a hashcode value for this CRLExtensions.
	*
	* @return the hashcode value.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string representation of this <tt>CRLExtensions</tt> object
	* in the form of a set of entries, enclosed in braces and separated
	* by the ASCII characters "<tt>,&nbsp;</tt>" (comma and space).
	* <p>Overrides to <tt>toString</tt> method of <tt>Object</tt>.
	*
	* @return  a string representation of this CRLExtensions.
	*/
	@:overload public function toString() : String;
	
	
}
