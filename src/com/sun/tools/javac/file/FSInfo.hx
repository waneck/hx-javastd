package com.sun.tools.javac.file;
extern class FSInfo
{
	/** Get the FSInfo instance for this context.
	*  @param context the context
	*  @return the Paths instance for this context
	*/
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.file.FSInfo;
	
	@:overload @:protected private function new() : Void;
	
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload @:public public function getCanonicalFile(file : java.io.File) : java.io.File;
	
	@:overload @:public public function exists(file : java.io.File) : Bool;
	
	@:overload @:public public function isDirectory(file : java.io.File) : Bool;
	
	@:overload @:public public function isFile(file : java.io.File) : Bool;
	
	@:overload @:public public function getJarClassPath(file : java.io.File) : java.util.List<java.io.File>;
	
	
}
