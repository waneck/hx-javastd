package com.sun.xml.internal.ws.developer;
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
extern class MemberSubmissionAddressingFeature extends javax.xml.ws.WebServiceFeature
{
	/**
	* Constant value identifying the MemberSubmissionAddressingFeature
	*/
	public static var ID(default, null) : String;
	
	/**
	* Constant ID for the <code>required</code> feature parameter
	*/
	public static var IS_REQUIRED(default, null) : String;
	
	/**
	* Create an MemberSubmissionAddressingFeature
	* The instance created will be enabled.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create an MemberSubmissionAddressingFeature
	*
	* @param enabled specifies whether this feature should
	*                be enabled or not.
	*/
	@:overload public function new(enabled : Bool) : Void;
	
	/**
	* Create an <code>MemberSubmissionAddressingFeature</code>
	*
	* @param enabled specifies whether this feature should
	* be enabled or not.
	* @param required specifies the value that will be used
	* for the <code>required</code> attribute on the
	* <code>wsaw:UsingAddressing</code> element.
	*/
	@:overload public function new(enabled : Bool, required : Bool) : Void;
	
	/**
	* Create an <code>MemberSubmissionAddressingFeature</code>
	*
	* @param enabled specifies whether this feature should
	* be enabled or not.
	* @param required specifies the value that will be used
	* for the <code>required</code> attribute on the
	* <code>wsaw:UsingAddressing</code> element.
	* @param validation specifies the value that will be used
	* for validation for the incoming messages. If LAX, messages are not strictly checked for conformance with  the spec.
	*/
	@:overload public function new(enabled : Bool, required : Bool, validation : MemberSubmissionAddressing.Validation) : Void;
	
	@:overload override public function getID() : String;
	
	@:overload public function isRequired() : Bool;
	
	@:overload public function setRequired(required : Bool) : Void;
	
	@:overload public function setValidation(validation : MemberSubmissionAddressing.Validation) : Void;
	
	@:overload public function getValidation() : MemberSubmissionAddressing.Validation;
	
	
}
