package sun.security.pkcs11;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
* TemplateManager class.
*
* Not all PKCS#11 tokens are created equal. One token may require that one
* value is specified when creating a certain type of object. Another token
* may require a different value. Yet another token may only work if the
* attribute is not specified at all.
*
* In order to allow an application to work unmodified with all those
* different tokens, the SunPKCS11 provider makes the attributes that are
* specified and their value configurable. Hence, only the SunPKCS11
* configuration file has to be tweaked at deployment time to allow all
* existing applications to be used.
*
* The template manager is responsible for reading the attribute configuration
* information and to make it available to the various internal components
* of the SunPKCS11 provider.
*
* @author  Andreas Sterbenz
* @since   1.5
*/
@:require(java5) @:internal extern class TemplateManager
{
	
}
@:native('sun$security$pkcs11$TemplateManager$KeyAndTemplate') @:internal extern class TemplateManager_KeyAndTemplate
{
	
}
/**
* Nested class representing a template identifier.
*/
@:native('sun$security$pkcs11$TemplateManager$TemplateKey') @:internal extern class TemplateManager_TemplateKey
{
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
/**
* Nested class representing template attributes.
*/
@:native('sun$security$pkcs11$TemplateManager$Template') @:internal extern class TemplateManager_Template
{
	@:overload @:public public function toString() : String;
	
	
}
