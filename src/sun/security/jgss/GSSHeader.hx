package sun.security.jgss;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* This class represents the mechanism independent part of a GSS-API
* context establishment token. Some mechanisms may choose to encode
* all subsequent tokens as well such that they start with an encoding
* of an instance of this class. e.g., The Kerberos v5 GSS-API Mechanism
* uses this header for all GSS-API tokens.
* <p>
* The format is specified in RFC 2743 section 3.1.
*
* @author Mayank Upadhyay
*/
/*
* The RFC states that implementations should explicitly follow the
* encoding scheme descibed in this section rather than use ASN.1
* compilers. However, we should consider removing duplicate ASN.1
* like code from here and depend on sun.security.util if possible.
*/
extern class GSSHeader
{
	/**
	* The tag defined in the GSS-API mechanism independent token
	* format.
	*/
	public static var TOKEN_ID(default, null) : Int;
	
	/**
	* Creates a GSSHeader instance whose encoding can be used as the
	* prefix for a particular mechanism token.
	* @param mechOid the Oid of the mechanism which generated the token
	* @param mechTokenLength the length of the subsequent portion that
	* the mechanism will be adding.
	*/
	@:overload public function new(mechOid : sun.security.util.ObjectIdentifier, mechTokenLength : Int) : Void;
	
	/**
	* Reads in a GSSHeader from an InputStream. Typically this would be
	* used as part of reading the complete token from an InputStream
	* that is obtained from a socket.
	*/
	@:overload public function new(is : java.io.InputStream) : Void;
	
	/**
	* Used to obtain the Oid stored in this GSSHeader instance.
	* @return the Oid of the mechanism.
	*/
	@:overload public function getOid() : sun.security.util.ObjectIdentifier;
	
	/**
	* Used to obtain the length of the mechanism specific token that
	* will follow the encoding of this GSSHeader instance.
	* @return the length of the mechanism specific token portion that
	* will follow this GSSHeader.
	*/
	@:overload public function getMechTokenLength() : Int;
	
	/**
	* Used to obtain the length of the encoding of this GSSHeader.
	* @return the lenght of the encoding of this GSSHeader instance.
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Used to determine what the maximum possible mechanism token
	* size is if the complete GSSToken returned to the application
	* (including a GSSHeader) is not to exceed some pre-determined
	* value in size.
	* @param mechOid the Oid of the mechanism that will generate
	* this GSS-API token
	* @param maxTotalSize the pre-determined value that serves as a
	* maximum size for the complete GSS-API token (including a
	* GSSHeader)
	* @return the maximum size of mechanism token that can be used
	* so as to not exceed maxTotalSize with the GSS-API token
	*/
	@:overload public static function getMaxMechTokenSize(mechOid : sun.security.util.ObjectIdentifier, maxTotalSize : Int) : Int;
	
	/**
	* Encodes this GSSHeader instance onto the provided OutputStream.
	* @param os the OutputStream to which the token should be written.
	* @return the number of bytes that are output as a result of this
	* encoding
	*/
	@:overload public function encode(os : java.io.OutputStream) : Int;
	
	
}
