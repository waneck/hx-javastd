package javax.xml.crypto.dsig.keyinfo;
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
* $Id: PGPData.java,v 1.4 2005/05/10 16:35:35 mullan Exp $
*/
extern interface PGPData extends javax.xml.crypto.XMLStructure
{
	/**
	* Returns the PGP public key identifier of this <code>PGPData</code> as
	* defined in <a href="http://www.ietf.org/rfc/rfc2440.txt">RFC 2440</a>,
	* section 11.2.
	*
	* @return the PGP public key identifier (may be <code>null</code> if
	*    not specified). Each invocation of this method returns a new clone
	*    to protect against subsequent modification.
	*/
	@:overload public function getKeyId() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the PGP key material packet of this <code>PGPData</code> as
	* defined in <a href="http://www.ietf.org/rfc/rfc2440.txt">RFC 2440</a>,
	* section 5.5.
	*
	* @return the PGP key material packet (may be <code>null</code> if not
	*    specified). Each invocation of this method returns a new clone to
	*    protect against subsequent modification.
	*/
	@:overload public function getKeyPacket() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns an {@link Collections#unmodifiableList unmodifiable list}
	* of {@link XMLStructure}s representing elements from an external
	* namespace.
	*
	* @return an unmodifiable list of <code>XMLStructure</code>s (may be
	*    empty, but never <code>null</code>)
	*/
	@:overload public function getExternalElements() : java.util.List<Dynamic>;
	
	
}
