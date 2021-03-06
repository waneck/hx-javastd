package sun.awt.image;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class InputStreamImageSource implements java.awt.image.ImageProducer implements sun.awt.image.ImageFetchable
{
	@:overload @:public public function addConsumer(ic : java.awt.image.ImageConsumer) : Void;
	
	@:overload @:public @:synchronized public function isConsumer(ic : java.awt.image.ImageConsumer) : Bool;
	
	@:overload @:public @:synchronized public function removeConsumer(ic : java.awt.image.ImageConsumer) : Void;
	
	@:overload @:public public function startProduction(ic : java.awt.image.ImageConsumer) : Void;
	
	@:overload @:public public function requestTopDownLeftRightResend(ic : java.awt.image.ImageConsumer) : Void;
	
	@:overload @:protected @:abstract private function getDecoder() : sun.awt.image.ImageDecoder;
	
	@:overload @:protected private function decoderForType(is : java.io.InputStream, content_type : String) : sun.awt.image.ImageDecoder;
	
	@:overload @:protected private function getDecoder(is : java.io.InputStream) : sun.awt.image.ImageDecoder;
	
	@:overload @:public public function doFetch() : Void;
	
	
}
