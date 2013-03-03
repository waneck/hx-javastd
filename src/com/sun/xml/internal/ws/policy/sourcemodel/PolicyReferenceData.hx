package com.sun.xml.internal.ws.policy.sourcemodel;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PolicyReferenceData
{
	/** Creates a new instance of PolicyReferenceData */
	@:overload @:public public function new(referencedModelUri : java.net.URI) : Void;
	
	@:overload @:public public function new(referencedModelUri : java.net.URI, expectedDigest : String, usedDigestAlgorithm : java.net.URI) : Void;
	
	@:overload @:public public function getReferencedModelUri() : java.net.URI;
	
	@:overload @:public public function getDigest() : String;
	
	@:overload @:public public function getDigestAlgorithmUri() : java.net.URI;
	
	/**
	* An {@code Object.toString()} method override.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* A helper method that appends indented string representation of this instance to the input string buffer.
	*
	* @param indentLevel indentation level to be used.
	* @param buffer buffer to be used for appending string representation of this instance
	* @return modified buffer containing new string representation of the instance
	*/
	@:overload @:public public function toString(indentLevel : Int, buffer : java.lang.StringBuffer) : java.lang.StringBuffer;
	
	
}
