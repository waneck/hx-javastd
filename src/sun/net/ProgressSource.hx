package sun.net;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class ProgressSource
{
	/**
	* Construct progress source object.
	*/
	@:overload public function new(url : java.net.URL, method : String) : Void;
	
	/**
	* Construct progress source object.
	*/
	@:overload public function new(url : java.net.URL, method : String, expected : haxe.Int64) : Void;
	
	@:overload public function connected() : Bool;
	
	/**
	* Close progress source.
	*/
	@:overload public function close() : Void;
	
	/**
	* Return URL of progress source.
	*/
	@:overload public function getURL() : java.net.URL;
	
	/**
	* Return method of URL.
	*/
	@:overload public function getMethod() : String;
	
	/**
	* Return content type of URL.
	*/
	@:overload public function getContentType() : String;
	
	@:overload public function setContentType(ct : String) : Void;
	
	/**
	* Return current progress.
	*/
	@:overload public function getProgress() : haxe.Int64;
	
	/**
	* Return expected maximum progress; -1 if expected is unknown.
	*/
	@:overload public function getExpected() : haxe.Int64;
	
	/**
	* Return state.
	*/
	@:overload public function getState() : ProgressSource_State;
	
	/**
	* Begin progress tracking.
	*/
	@:overload public function beginTracking() : Void;
	
	/**
	* Finish progress tracking.
	*/
	@:overload public function finishTracking() : Void;
	
	/**
	* Update progress.
	*/
	@:overload public function updateProgress(latestProgress : haxe.Int64, expectedProgress : haxe.Int64) : Void;
	
	@:overload public function clone() : Dynamic;
	
	@:overload public function toString() : String;
	
	
}
/**
* ProgressSource represents the source of progress changes.
*
* @author Stanley Man-Kit Ho
*/
@:native('sun$net$ProgressSource$State') extern enum ProgressSource_State
{
	NEW;
	CONNECTED;
	UPDATE;
	DELETE;
	
}

