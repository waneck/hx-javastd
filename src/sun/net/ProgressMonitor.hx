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
extern class ProgressMonitor
{
	/**
	* Return default ProgressMonitor.
	*/
	@:overload @:public @:static @:synchronized public static function getDefault() : sun.net.ProgressMonitor;
	
	/**
	* Change default ProgressMonitor implementation.
	*/
	@:overload @:public @:static @:synchronized public static function setDefault(m : sun.net.ProgressMonitor) : Void;
	
	/**
	* Change progress metering policy.
	*/
	@:overload @:public @:static @:synchronized public static function setMeteringPolicy(policy : sun.net.ProgressMeteringPolicy) : Void;
	
	/**
	* Return a snapshot of the ProgressSource list
	*/
	@:overload @:public public function getProgressSources() : java.util.ArrayList<sun.net.ProgressSource>;
	
	/**
	* Return update notification threshold
	*/
	@:overload @:public @:synchronized public function getProgressUpdateThreshold() : Int;
	
	/**
	* Return true if metering should be turned on
	* for a particular URL input stream.
	*/
	@:overload @:public public function shouldMeterInput(url : java.net.URL, method : String) : Bool;
	
	/**
	* Register progress source when progress is began.
	*/
	@:overload @:public public function registerSource(pi : sun.net.ProgressSource) : Void;
	
	/**
	* Unregister progress source when progress is finished.
	*/
	@:overload @:public public function unregisterSource(pi : sun.net.ProgressSource) : Void;
	
	/**
	* Progress source is updated.
	*/
	@:overload @:public public function updateProgress(pi : sun.net.ProgressSource) : Void;
	
	/**
	* Add progress listener in progress monitor.
	*/
	@:overload @:public public function addProgressListener(l : sun.net.ProgressListener) : Void;
	
	/**
	* Remove progress listener from progress monitor.
	*/
	@:overload @:public public function removeProgressListener(l : sun.net.ProgressListener) : Void;
	
	
}
@:internal extern class DefaultProgressMeteringPolicy implements sun.net.ProgressMeteringPolicy
{
	/**
	* Return true if metering should be turned on for a particular network input stream.
	*/
	@:overload @:public public function shouldMeterInput(url : java.net.URL, method : String) : Bool;
	
	/**
	* Return update notification threshold.
	*/
	@:overload @:public public function getProgressUpdateThreshold() : Int;
	
	
}
