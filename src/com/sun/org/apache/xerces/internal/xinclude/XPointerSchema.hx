package com.sun.org.apache.xerces.internal.xinclude;
extern interface XPointerSchema extends com.sun.org.apache.xerces.internal.xni.parser.XMLComponent extends com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentFilter
{
	/**
	* set the Schema Name  eg element , xpointer
	*/
	@:overload @:public public function setXPointerSchemaName(schemaName : String) : Void;
	
	/**
	* Return  Schema Name  eg element , xpointer
	*
	*/
	@:overload @:public public function getXpointerSchemaName() : String;
	
	/**
	* Parent Contenhandler for the this contenthandler.
	* // not sure about the parameter type. It can be Contenthandler instead of Object type.
	*/
	@:overload @:public public function setParent(parent : Dynamic) : Void;
	
	/**
	* return the Parent Contenthandler
	*/
	@:overload @:public public function getParent() : Dynamic;
	
	/**
	* Content of the XPointer Schema. Xpath to be resolved.
	*/
	@:overload @:public public function setXPointerSchemaPointer(content : String) : Void;
	
	/**
	* Return the XPointer Schema.
	*/
	@:overload @:public public function getXPointerSchemaPointer() : String;
	
	@:overload @:public public function isSubResourceIndentified() : Bool;
	
	@:overload @:public public function reset() : Void;
	
	
}
