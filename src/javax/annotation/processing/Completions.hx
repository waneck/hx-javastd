package javax.annotation.processing;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Completions
{
	/**
	* Returns a completion of the value and message.
	*
	* @param value the text of the completion
	* @param message a message about the completion
	* @return a completion of the provided value and message
	*/
	@:overload public static function of(value : String, message : String) : javax.annotation.processing.Completion;
	
	/**
	* Returns a completion of the value and an empty message
	*
	* @param value the text of the completion
	* @return a completion of the value and an empty message
	*/
	@:overload public static function of(value : String) : javax.annotation.processing.Completion;
	
	
}
@:native('javax$annotation$processing$Completions$SimpleCompletion') @:internal extern class Completions_SimpleCompletion implements javax.annotation.processing.Completion
{
	@:overload public function getValue() : String;
	
	@:overload public function getMessage() : String;
	
	@:overload public function toString() : String;
	
	
}
