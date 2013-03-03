package javax.activation;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class ActivationDataFlavor extends java.awt.datatransfer.DataFlavor
{
	/**
	* Construct a DataFlavor that represents an arbitrary
	* Java object. This constructor is an extension of the
	* JDK's DataFlavor in that it allows the explicit setting
	* of all three DataFlavor attributes.
	* <p>
	* The returned DataFlavor will have the following characteristics:
	* <p>
	* representationClass = representationClass<br>
	* mimeType            = mimeType<br>
	* humanName           = humanName
	* <p>
	*
	* @param representationClass the class used in this DataFlavor
	* @param mimeType the MIME type of the data represented by this class
	* @param humanPresentableName the human presentable name of the flavor
	*/
	@:overload @:public public function new(representationClass : Class<Dynamic>, mimeType : String, humanPresentableName : String) : Void;
	
	/**
	* Construct a DataFlavor that represents a MimeType.
	* <p>
	* The returned DataFlavor will have the following characteristics:
	* <p>
	* If the mimeType is "application/x-java-serialized-object;
	* class=", the result is the same as calling new
	* DataFlavor(Class.forName()) as above.
	* <p>
	* otherwise:
	* <p>
	* representationClass = InputStream<p>
	* mimeType = mimeType<p>
	*
	* @param representationClass the class used in this DataFlavor
	* @param humanPresentableName the human presentable name of the flavor
	*/
	@:overload @:public public function new(representationClass : Class<Dynamic>, humanPresentableName : String) : Void;
	
	/**
	* Construct a DataFlavor that represents a MimeType.
	* <p>
	* The returned DataFlavor will have the following characteristics:
	* <p>
	* If the mimeType is "application/x-java-serialized-object; class=",
	* the result is the same as calling new DataFlavor(Class.forName()) as
	* above, otherwise:
	* <p>
	* representationClass = InputStream<p>
	* mimeType = mimeType
	*
	* @param mimeType the MIME type of the data represented by this class
	* @param humanPresentableName the human presentable name of the flavor
	*/
	@:overload @:public public function new(mimeType : String, humanPresentableName : String) : Void;
	
	/**
	* Return the MIME type for this DataFlavor.
	*
	* @return  the MIME type
	*/
	@:overload @:public override public function getMimeType() : String;
	
	/**
	* Return the representation class.
	*
	* @return  the representation class
	*/
	@:overload @:public override public function getRepresentationClass() : Class<Dynamic>;
	
	/**
	* Return the Human Presentable name.
	*
	* @return  the human presentable name
	*/
	@:overload @:public override public function getHumanPresentableName() : String;
	
	/**
	* Set the human presentable name.
	*
	* @param humanPresentableName      the name to set
	*/
	@:overload @:public override public function setHumanPresentableName(humanPresentableName : String) : Void;
	
	/**
	* Compares the DataFlavor passed in with this DataFlavor; calls
	* the <code>isMimeTypeEqual</code> method.
	*
	* @param dataFlavor        the DataFlavor to compare with
	* @return                  true if the MIME type and representation class
	*                          are the same
	*/
	@:overload @:public override public function equals(dataFlavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Is the string representation of the MIME type passed in equivalent
	* to the MIME type of this DataFlavor. <p>
	*
	* ActivationDataFlavor delegates the comparison of MIME types to
	* the MimeType class included as part of the JavaBeans Activation
	* Framework. This provides a more robust comparison than is normally
	* available in the DataFlavor class.
	*
	* @param mimeType  the MIME type
	* @return          true if the same MIME type
	*/
	@:overload @:public override public function isMimeTypeEqual(mimeType : String) : Bool;
	
	/**
	* Called on DataFlavor for every MIME Type parameter to allow DataFlavor
	* subclasses to handle special parameters like the text/plain charset
	* parameters, whose values are case insensitive.  (MIME type parameter
	* values are supposed to be case sensitive).
	* <p>
	* This method is called for each parameter name/value pair and should
	* return the normalized representation of the parameterValue.
	* This method is never invoked by this implementation.
	*
	* @param parameterName     the parameter name
	* @param parameterValue    the parameter value
	* @return                  the normalized parameter value
	* @deprecated
	*/
	@:overload @:protected override private function normalizeMimeTypeParameter(parameterName : String, parameterValue : String) : String;
	
	/**
	* Called for each MIME type string to give DataFlavor subtypes the
	* opportunity to change how the normalization of MIME types is
	* accomplished.
	* One possible use would be to add default parameter/value pairs in cases
	* where none are present in the MIME type string passed in.
	* This method is never invoked by this implementation.
	*
	* @param mimeType  the MIME type
	* @return          the normalized MIME type
	* @deprecated
	*/
	@:overload @:protected override private function normalizeMimeType(mimeType : String) : String;
	
	
}
