package sun.net;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ProgressEvent extends java.util.EventObject
{
	/**
	* Construct a ProgressEvent object.
	*/
	@:overload public function new(source : sun.net.ProgressSource, url : java.net.URL, method : String, contentType : String, state : sun.net.ProgressSource.ProgressSource_State, progress : haxe.Int64, expected : haxe.Int64) : Void;
	
	/**
	* Return URL related to the progress.
	*/
	@:overload public function getURL() : java.net.URL;
	
	/**
	* Return method associated with URL.
	*/
	@:overload public function getMethod() : String;
	
	/**
	* Return content type of the URL.
	*/
	@:overload public function getContentType() : String;
	
	/**
	* Return current progress value.
	*/
	@:overload public function getProgress() : haxe.Int64;
	
	/**
	* Return expected maximum progress value; -1 if expected is unknown.
	*/
	@:overload public function getExpected() : haxe.Int64;
	
	/**
	* Return state.
	*/
	@:overload public function getState() : sun.net.ProgressSource.ProgressSource_State;
	
	@:overload public function toString() : String;
	
	
}
