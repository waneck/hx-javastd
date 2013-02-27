package sun.java2d.opengl;
/*
* Copyright (c) 2005, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class OGLRenderQueue extends sun.java2d.pipe.RenderQueue
{
	/**
	* Returns the single OGLRenderQueue instance.  If it has not yet been
	* initialized, this method will first construct the single instance
	* before returning it.
	*/
	@:overload @:synchronized public static function getInstance() : OGLRenderQueue;
	
	/**
	* Flushes the single OGLRenderQueue instance synchronously.  If an
	* OGLRenderQueue has not yet been instantiated, this method is a no-op.
	* This method is useful in the case of Toolkit.sync(), in which we want
	* to flush the OGL pipeline, but only if the OGL pipeline is currently
	* enabled.  Since this class has few external dependencies, callers need
	* not be concerned that calling this method will trigger initialization
	* of the OGL pipeline and related classes.
	*/
	@:overload public static function sync() : Void;
	
	/**
	* Disposes the native memory associated with the given native
	* graphics config info pointer on the single queue flushing thread.
	*/
	@:overload public static function disposeGraphicsConfig(pConfigInfo : haxe.Int64) : Void;
	
	/**
	* Returns true if the current thread is the OGL QueueFlusher thread.
	*/
	@:overload public static function isQueueFlusherThread() : Bool;
	
	@:overload override public function flushNow() : Void;
	
	@:overload override public function flushAndInvokeNow(r : java.lang.Runnable) : Void;
	
	
}
@:native('sun$java2d$opengl$OGLRenderQueue$QueueFlusher') @:internal extern class OGLRenderQueue_QueueFlusher extends java.lang.Thread
{
	@:overload public function new(threadGroup : java.lang.ThreadGroup) : Void;
	
	@:overload @:synchronized public function flushNow() : Void;
	
	@:overload @:synchronized public function flushAndInvokeNow(task : java.lang.Runnable) : Void;
	
	@:overload @:synchronized override public function run() : Void;
	
	
}
