package com.sun.tools.internal.xjc.reader.relaxng;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class RELAXNGInternalizationLogic implements com.sun.tools.internal.xjc.reader.internalizer.InternalizationLogic
{
	@:overload @:public public function createExternalReferenceFinder(parent : com.sun.tools.internal.xjc.reader.internalizer.DOMForest) : org.xml.sax.helpers.XMLFilterImpl;
	
	@:overload @:public public function checkIfValidTargetNode(parent : com.sun.tools.internal.xjc.reader.internalizer.DOMForest, bindings : org.w3c.dom.Element, target : org.w3c.dom.Element) : Bool;
	
	@:overload @:public public function refineTarget(target : org.w3c.dom.Element) : org.w3c.dom.Element;
	
	
}
/**
* This filter looks for &lt;xs:import> and &lt;xs:include>
* and parses those documents referenced by them.
*/
@:native('com$sun$tools$internal$xjc$reader$relaxng$RELAXNGInternalizationLogic$ReferenceFinder') @:internal extern class RELAXNGInternalizationLogic_ReferenceFinder extends com.sun.tools.internal.xjc.reader.internalizer.AbstractReferenceFinderImpl
{
	@:overload @:protected override private function findExternalResource(nsURI : String, localName : String, atts : org.xml.sax.Attributes) : String;
	
	
}
