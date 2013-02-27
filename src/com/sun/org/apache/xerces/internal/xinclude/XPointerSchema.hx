package com.sun.org.apache.xerces.internal.xinclude;
extern interface XPointerSchema extends com.sun.org.apache.xerces.internal.xni.parser.XMLComponent extends com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentFilter
{
	/**
	* set the Schema Name  eg element , xpointer
	*/
	@:overload public function setXPointerSchemaName(schemaName : String) : Void;
	
	/**
	* Return  Schema Name  eg element , xpointer
	*
	*/
	@:overload public function getXpointerSchemaName() : String;
	
	/**
	* Parent Contenhandler for the this contenthandler.
	* // not sure about the parameter type. It can be Contenthandler instead of Object type.
	*/
	@:overload public function setParent(parent : Dynamic) : Void;
	
	/**
	* return the Parent Contenthandler
	*/
	@:overload public function getParent() : Dynamic;
	
	/**
	* Content of the XPointer Schema. Xpath to be resolved.
	*/
	@:overload public function setXPointerSchemaPointer(content : String) : Void;
	
	/**
	* Return the XPointer Schema.
	*/
	@:overload public function getXPointerSchemaPointer() : String;
	
	@:overload public function isSubResourceIndentified() : Bool;
	
	@:overload public function reset() : Void;
	
	
}
