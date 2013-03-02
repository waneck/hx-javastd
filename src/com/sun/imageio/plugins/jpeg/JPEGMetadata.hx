package com.sun.imageio.plugins.jpeg;
/*
* Copyright (c) 2001, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class JPEGMetadata extends javax.imageio.metadata.IIOMetadata implements java.lang.Cloneable
{
	@:overload private function clone() : Dynamic;
	
	@:overload public function getAsTree(formatName : String) : org.w3c.dom.Node;
	
	@:overload private function getStandardChromaNode() : IIOMetadataNode;
	
	@:overload private function getStandardCompressionNode() : IIOMetadataNode;
	
	@:overload private function getStandardDimensionNode() : IIOMetadataNode;
	
	@:overload private function getStandardTextNode() : IIOMetadataNode;
	
	@:overload private function getStandardTransparencyNode() : IIOMetadataNode;
	
	@:overload public function isReadOnly() : Bool;
	
	@:overload public function mergeTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload public function setFromTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload public function reset() : Void;
	
	@:overload public function print() : Void;
	
	
}
