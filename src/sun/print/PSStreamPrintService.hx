package sun.print;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class PSStreamPrintService extends javax.print.StreamPrintService implements sun.print.SunPrinterJobService
{
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	@:overload @:public override public function getOutputFormat() : String;
	
	@:overload @:public override public function getSupportedDocFlavors() : java.NativeArray<javax.print.DocFlavor>;
	
	@:overload @:public override public function createPrintJob() : javax.print.DocPrintJob;
	
	@:overload @:public public function usesClass(c : Class<Dynamic>) : Bool;
	
	@:overload @:public override public function getName() : String;
	
	@:overload @:public override public function addPrintServiceAttributeListener(listener : javax.print.event.PrintServiceAttributeListener) : Void;
	
	@:overload @:public override public function removePrintServiceAttributeListener(listener : javax.print.event.PrintServiceAttributeListener) : Void;
	
	@:overload @:public override public function getAttribute<T : javax.print.attribute.PrintServiceAttribute>(category : Class<T>) : T;
	
	@:overload @:public override public function getAttributes() : javax.print.attribute.PrintServiceAttributeSet;
	
	@:overload @:public override public function isDocFlavorSupported(flavor : javax.print.DocFlavor) : Bool;
	
	@:overload @:public override public function getSupportedAttributeCategories() : java.NativeArray<Class<Dynamic>>;
	
	@:overload @:public override public function isAttributeCategorySupported(category : Class<javax.print.attribute.Attribute>) : Bool;
	
	@:overload @:public override public function getDefaultAttributeValue(category : Class<javax.print.attribute.Attribute>) : Dynamic;
	
	@:overload @:public override public function getSupportedAttributeValues(category : Class<javax.print.attribute.Attribute>, flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : Dynamic;
	
	@:overload @:public override public function isAttributeValueSupported(attr : javax.print.attribute.Attribute, flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : Bool;
	
	@:overload @:public override public function getUnsupportedAttributes(flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : javax.print.attribute.AttributeSet;
	
	@:overload @:public override public function getServiceUIFactory() : javax.print.ServiceUIFactory;
	
	@:overload @:public public function toString() : String;
	
	/* Stream services have an output stream which cannot be shared,
	* so two services are equal only if they are the same object.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
