package sun.print;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class UnixPrintService implements javax.print.PrintService implements sun.print.AttributeUpdater implements sun.print.SunPrinterJobService
{
	@:overload public function invalidateService() : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function createPrintJob() : javax.print.DocPrintJob;
	
	@:overload public function getUpdatedAttributes() : javax.print.attribute.PrintServiceAttributeSet;
	
	@:overload public function wakeNotifier() : Void;
	
	@:overload public function addPrintServiceAttributeListener(listener : javax.print.event.PrintServiceAttributeListener) : Void;
	
	@:overload public function removePrintServiceAttributeListener(listener : javax.print.event.PrintServiceAttributeListener) : Void;
	
	@:overload public function getAttribute<T : javax.print.attribute.PrintServiceAttribute>(category : Class<T>) : T;
	
	@:overload public function getAttributes() : javax.print.attribute.PrintServiceAttributeSet;
	
	@:overload public function getSupportedDocFlavors() : java.NativeArray<javax.print.DocFlavor>;
	
	@:overload public function isDocFlavorSupported(flavor : javax.print.DocFlavor) : Bool;
	
	@:overload public function getSupportedAttributeCategories() : java.NativeArray<Class<Dynamic>>;
	
	@:overload public function isAttributeCategorySupported(category : Class<javax.print.attribute.Attribute>) : Bool;
	
	/* return defaults for all attributes for which there is a default
	* value
	*/
	@:overload public function getDefaultAttributeValue(category : Class<javax.print.attribute.Attribute>) : Dynamic;
	
	@:overload public function getSupportedAttributeValues(category : Class<javax.print.attribute.Attribute>, flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : Dynamic;
	
	@:overload public function isAttributeValueSupported(attr : javax.print.attribute.Attribute, flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : Bool;
	
	@:overload public function getUnsupportedAttributes(flavor : javax.print.DocFlavor, attributes : javax.print.attribute.AttributeSet) : javax.print.attribute.AttributeSet;
	
	@:overload public function getServiceUIFactory() : javax.print.ServiceUIFactory;
	
	@:overload public function toString() : String;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function usesClass(c : Class<Dynamic>) : Bool;
	
	
}
