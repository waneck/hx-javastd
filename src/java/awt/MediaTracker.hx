package java.awt;
/*
* Copyright (c) 1995, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class MediaTracker implements java.io.Serializable
{
	/**
	* Creates a media tracker to track images for a given component.
	* @param     comp the component on which the images
	*                     will eventually be drawn
	*/
	@:overload @:public public function new(comp : java.awt.Component) : Void;
	
	/**
	* Adds an image to the list of images being tracked by this media
	* tracker. The image will eventually be rendered at its default
	* (unscaled) size.
	* @param     image   the image to be tracked
	* @param     id      an identifier used to track this image
	*/
	@:overload @:public public function addImage(image : java.awt.Image, id : Int) : Void;
	
	/**
	* Adds a scaled image to the list of images being tracked
	* by this media tracker. The image will eventually be
	* rendered at the indicated width and height.
	*
	* @param     image   the image to be tracked
	* @param     id   an identifier that can be used to track this image
	* @param     w    the width at which the image is rendered
	* @param     h    the height at which the image is rendered
	*/
	@:overload @:public @:synchronized public function addImage(image : java.awt.Image, id : Int, w : Int, h : Int) : Void;
	
	/**
	* Flag indicating that media is currently being loaded.
	* @see         java.awt.MediaTracker#statusAll
	* @see         java.awt.MediaTracker#statusID
	*/
	@:public @:static @:final public static var LOADING(default, null) : Int;
	
	/**
	* Flag indicating that the downloading of media was aborted.
	* @see         java.awt.MediaTracker#statusAll
	* @see         java.awt.MediaTracker#statusID
	*/
	@:public @:static @:final public static var ABORTED(default, null) : Int;
	
	/**
	* Flag indicating that the downloading of media encountered
	* an error.
	* @see         java.awt.MediaTracker#statusAll
	* @see         java.awt.MediaTracker#statusID
	*/
	@:public @:static @:final public static var ERRORED(default, null) : Int;
	
	/**
	* Flag indicating that the downloading of media was completed
	* successfully.
	* @see         java.awt.MediaTracker#statusAll
	* @see         java.awt.MediaTracker#statusID
	*/
	@:public @:static @:final public static var COMPLETE(default, null) : Int;
	
	/**
	* Checks to see if all images being tracked by this media tracker
	* have finished loading.
	* <p>
	* This method does not start loading the images if they are not
	* already loading.
	* <p>
	* If there is an error while loading or scaling an image, then that
	* image is considered to have finished loading. Use the
	* <code>isErrorAny</code> or <code>isErrorID</code> methods to
	* check for errors.
	* @return      <code>true</code> if all images have finished loading,
	*                       have been aborted, or have encountered
	*                       an error; <code>false</code> otherwise
	* @see         java.awt.MediaTracker#checkAll(boolean)
	* @see         java.awt.MediaTracker#checkID
	* @see         java.awt.MediaTracker#isErrorAny
	* @see         java.awt.MediaTracker#isErrorID
	*/
	@:overload @:public public function checkAll() : Bool;
	
	/**
	* Checks to see if all images being tracked by this media tracker
	* have finished loading.
	* <p>
	* If the value of the <code>load</code> flag is <code>true</code>,
	* then this method starts loading any images that are not yet
	* being loaded.
	* <p>
	* If there is an error while loading or scaling an image, that
	* image is considered to have finished loading. Use the
	* <code>isErrorAny</code> and <code>isErrorID</code> methods to
	* check for errors.
	* @param       load   if <code>true</code>, start loading any
	*                       images that are not yet being loaded
	* @return      <code>true</code> if all images have finished loading,
	*                       have been aborted, or have encountered
	*                       an error; <code>false</code> otherwise
	* @see         java.awt.MediaTracker#checkID
	* @see         java.awt.MediaTracker#checkAll()
	* @see         java.awt.MediaTracker#isErrorAny()
	* @see         java.awt.MediaTracker#isErrorID(int)
	*/
	@:overload @:public public function checkAll(load : Bool) : Bool;
	
	/**
	* Checks the error status of all of the images.
	* @return   <code>true</code> if any of the images tracked
	*                  by this media tracker had an error during
	*                  loading; <code>false</code> otherwise
	* @see      java.awt.MediaTracker#isErrorID
	* @see      java.awt.MediaTracker#getErrorsAny
	*/
	@:overload @:public @:synchronized public function isErrorAny() : Bool;
	
	/**
	* Returns a list of all media that have encountered an error.
	* @return       an array of media objects tracked by this
	*                        media tracker that have encountered
	*                        an error, or <code>null</code> if
	*                        there are none with errors
	* @see          java.awt.MediaTracker#isErrorAny
	* @see          java.awt.MediaTracker#getErrorsID
	*/
	@:overload @:public @:synchronized public function getErrorsAny() : java.NativeArray<Dynamic>;
	
	/**
	* Starts loading all images tracked by this media tracker. This
	* method waits until all the images being tracked have finished
	* loading.
	* <p>
	* If there is an error while loading or scaling an image, then that
	* image is considered to have finished loading. Use the
	* <code>isErrorAny</code> or <code>isErrorID</code> methods to
	* check for errors.
	* @see         java.awt.MediaTracker#waitForID(int)
	* @see         java.awt.MediaTracker#waitForAll(long)
	* @see         java.awt.MediaTracker#isErrorAny
	* @see         java.awt.MediaTracker#isErrorID
	* @exception   InterruptedException  if any thread has
	*                                     interrupted this thread
	*/
	@:overload @:public public function waitForAll() : Void;
	
	/**
	* Starts loading all images tracked by this media tracker. This
	* method waits until all the images being tracked have finished
	* loading, or until the length of time specified in milliseconds
	* by the <code>ms</code> argument has passed.
	* <p>
	* If there is an error while loading or scaling an image, then
	* that image is considered to have finished loading. Use the
	* <code>isErrorAny</code> or <code>isErrorID</code> methods to
	* check for errors.
	* @param       ms       the number of milliseconds to wait
	*                       for the loading to complete
	* @return      <code>true</code> if all images were successfully
	*                       loaded; <code>false</code> otherwise
	* @see         java.awt.MediaTracker#waitForID(int)
	* @see         java.awt.MediaTracker#waitForAll(long)
	* @see         java.awt.MediaTracker#isErrorAny
	* @see         java.awt.MediaTracker#isErrorID
	* @exception   InterruptedException  if any thread has
	*                                     interrupted this thread.
	*/
	@:overload @:public @:synchronized public function waitForAll(ms : haxe.Int64) : Bool;
	
	/**
	* Calculates and returns the bitwise inclusive <b>OR</b> of the
	* status of all media that are tracked by this media tracker.
	* <p>
	* Possible flags defined by the
	* <code>MediaTracker</code> class are <code>LOADING</code>,
	* <code>ABORTED</code>, <code>ERRORED</code>, and
	* <code>COMPLETE</code>. An image that hasn't started
	* loading has zero as its status.
	* <p>
	* If the value of <code>load</code> is <code>true</code>, then
	* this method starts loading any images that are not yet being loaded.
	*
	* @param        load   if <code>true</code>, start loading
	*                            any images that are not yet being loaded
	* @return       the bitwise inclusive <b>OR</b> of the status of
	*                            all of the media being tracked
	* @see          java.awt.MediaTracker#statusID(int, boolean)
	* @see          java.awt.MediaTracker#LOADING
	* @see          java.awt.MediaTracker#ABORTED
	* @see          java.awt.MediaTracker#ERRORED
	* @see          java.awt.MediaTracker#COMPLETE
	*/
	@:overload @:public public function statusAll(load : Bool) : Int;
	
	/**
	* Checks to see if all images tracked by this media tracker that
	* are tagged with the specified identifier have finished loading.
	* <p>
	* This method does not start loading the images if they are not
	* already loading.
	* <p>
	* If there is an error while loading or scaling an image, then that
	* image is considered to have finished loading. Use the
	* <code>isErrorAny</code> or <code>isErrorID</code> methods to
	* check for errors.
	* @param       id   the identifier of the images to check
	* @return      <code>true</code> if all images have finished loading,
	*                       have been aborted, or have encountered
	*                       an error; <code>false</code> otherwise
	* @see         java.awt.MediaTracker#checkID(int, boolean)
	* @see         java.awt.MediaTracker#checkAll()
	* @see         java.awt.MediaTracker#isErrorAny()
	* @see         java.awt.MediaTracker#isErrorID(int)
	*/
	@:overload @:public public function checkID(id : Int) : Bool;
	
	/**
	* Checks to see if all images tracked by this media tracker that
	* are tagged with the specified identifier have finished loading.
	* <p>
	* If the value of the <code>load</code> flag is <code>true</code>,
	* then this method starts loading any images that are not yet
	* being loaded.
	* <p>
	* If there is an error while loading or scaling an image, then that
	* image is considered to have finished loading. Use the
	* <code>isErrorAny</code> or <code>isErrorID</code> methods to
	* check for errors.
	* @param       id       the identifier of the images to check
	* @param       load     if <code>true</code>, start loading any
	*                       images that are not yet being loaded
	* @return      <code>true</code> if all images have finished loading,
	*                       have been aborted, or have encountered
	*                       an error; <code>false</code> otherwise
	* @see         java.awt.MediaTracker#checkID(int, boolean)
	* @see         java.awt.MediaTracker#checkAll()
	* @see         java.awt.MediaTracker#isErrorAny()
	* @see         java.awt.MediaTracker#isErrorID(int)
	*/
	@:overload @:public public function checkID(id : Int, load : Bool) : Bool;
	
	/**
	* Checks the error status of all of the images tracked by this
	* media tracker with the specified identifier.
	* @param        id   the identifier of the images to check
	* @return       <code>true</code> if any of the images with the
	*                          specified identifier had an error during
	*                          loading; <code>false</code> otherwise
	* @see          java.awt.MediaTracker#isErrorAny
	* @see          java.awt.MediaTracker#getErrorsID
	*/
	@:overload @:public @:synchronized public function isErrorID(id : Int) : Bool;
	
	/**
	* Returns a list of media with the specified ID that
	* have encountered an error.
	* @param       id   the identifier of the images to check
	* @return      an array of media objects tracked by this media
	*                       tracker with the specified identifier
	*                       that have encountered an error, or
	*                       <code>null</code> if there are none with errors
	* @see         java.awt.MediaTracker#isErrorID
	* @see         java.awt.MediaTracker#isErrorAny
	* @see         java.awt.MediaTracker#getErrorsAny
	*/
	@:overload @:public @:synchronized public function getErrorsID(id : Int) : java.NativeArray<Dynamic>;
	
	/**
	* Starts loading all images tracked by this media tracker with the
	* specified identifier. This method waits until all the images with
	* the specified identifier have finished loading.
	* <p>
	* If there is an error while loading or scaling an image, then that
	* image is considered to have finished loading. Use the
	* <code>isErrorAny</code> and <code>isErrorID</code> methods to
	* check for errors.
	* @param         id   the identifier of the images to check
	* @see           java.awt.MediaTracker#waitForAll
	* @see           java.awt.MediaTracker#isErrorAny()
	* @see           java.awt.MediaTracker#isErrorID(int)
	* @exception     InterruptedException  if any thread has
	*                          interrupted this thread.
	*/
	@:overload @:public public function waitForID(id : Int) : Void;
	
	/**
	* Starts loading all images tracked by this media tracker with the
	* specified identifier. This method waits until all the images with
	* the specified identifier have finished loading, or until the
	* length of time specified in milliseconds by the <code>ms</code>
	* argument has passed.
	* <p>
	* If there is an error while loading or scaling an image, then that
	* image is considered to have finished loading. Use the
	* <code>statusID</code>, <code>isErrorID</code>, and
	* <code>isErrorAny</code> methods to check for errors.
	* @param         id   the identifier of the images to check
	* @param         ms   the length of time, in milliseconds, to wait
	*                           for the loading to complete
	* @see           java.awt.MediaTracker#waitForAll
	* @see           java.awt.MediaTracker#waitForID(int)
	* @see           java.awt.MediaTracker#statusID
	* @see           java.awt.MediaTracker#isErrorAny()
	* @see           java.awt.MediaTracker#isErrorID(int)
	* @exception     InterruptedException  if any thread has
	*                          interrupted this thread.
	*/
	@:overload @:public @:synchronized public function waitForID(id : Int, ms : haxe.Int64) : Bool;
	
	/**
	* Calculates and returns the bitwise inclusive <b>OR</b> of the
	* status of all media with the specified identifier that are
	* tracked by this media tracker.
	* <p>
	* Possible flags defined by the
	* <code>MediaTracker</code> class are <code>LOADING</code>,
	* <code>ABORTED</code>, <code>ERRORED</code>, and
	* <code>COMPLETE</code>. An image that hasn't started
	* loading has zero as its status.
	* <p>
	* If the value of <code>load</code> is <code>true</code>, then
	* this method starts loading any images that are not yet being loaded.
	* @param        id   the identifier of the images to check
	* @param        load   if <code>true</code>, start loading
	*                            any images that are not yet being loaded
	* @return       the bitwise inclusive <b>OR</b> of the status of
	*                            all of the media with the specified
	*                            identifier that are being tracked
	* @see          java.awt.MediaTracker#statusAll(boolean)
	* @see          java.awt.MediaTracker#LOADING
	* @see          java.awt.MediaTracker#ABORTED
	* @see          java.awt.MediaTracker#ERRORED
	* @see          java.awt.MediaTracker#COMPLETE
	*/
	@:overload @:public public function statusID(id : Int, load : Bool) : Int;
	
	/**
	* Removes the specified image from this media tracker.
	* All instances of the specified image are removed,
	* regardless of scale or ID.
	* @param   image     the image to be removed
	* @see     java.awt.MediaTracker#removeImage(java.awt.Image, int)
	* @see     java.awt.MediaTracker#removeImage(java.awt.Image, int, int, int)
	* @since   JDK1.1
	*/
	@:require(java1) @:overload @:public @:synchronized public function removeImage(image : java.awt.Image) : Void;
	
	/**
	* Removes the specified image from the specified tracking
	* ID of this media tracker.
	* All instances of <code>Image</code> being tracked
	* under the specified ID are removed regardless of scale.
	* @param      image the image to be removed
	* @param      id the tracking ID frrom which to remove the image
	* @see        java.awt.MediaTracker#removeImage(java.awt.Image)
	* @see        java.awt.MediaTracker#removeImage(java.awt.Image, int, int, int)
	* @since      JDK1.1
	*/
	@:require(java1) @:overload @:public @:synchronized public function removeImage(image : java.awt.Image, id : Int) : Void;
	
	/**
	* Removes the specified image with the specified
	* width, height, and ID from this media tracker.
	* Only the specified instance (with any duplicates) is removed.
	* @param   image the image to be removed
	* @param   id the tracking ID from which to remove the image
	* @param   width the width to remove (-1 for unscaled)
	* @param   height the height to remove (-1 for unscaled)
	* @see     java.awt.MediaTracker#removeImage(java.awt.Image)
	* @see     java.awt.MediaTracker#removeImage(java.awt.Image, int)
	* @since   JDK1.1
	*/
	@:require(java1) @:overload @:public @:synchronized public function removeImage(image : java.awt.Image, id : Int, width : Int, height : Int) : Void;
	
	
}
@:internal extern class MediaEntry
{
	
}
@:internal extern class ImageMediaEntry extends java.awt.MediaTracker.MediaEntry implements java.awt.image.ImageObserver implements java.io.Serializable
{
	@:overload @:public public function imageUpdate(img : java.awt.Image, infoflags : Int, x : Int, y : Int, w : Int, h : Int) : Bool;
	
	
}
