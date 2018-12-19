SimpleGlApp Usage Notes
==============

This example demonstrates a simple OpenGL application which can be built and run
on host and on device using the Virtual Device and Zero Iteration systems.

### Cross-Building Notes

The theory of development for MLSDK is that you can build and debug on host as well as on device.  It provides enough headers
and libraries for ML API development on all supported platforms (under `include` and `lib`).  It also bundles a toolchain
and C / C++ libraries for native development for the Magic Leap device (under `lumin/`).

Although host development is well-supported, MLSDK does not bundle host toolchains -- you are expected to install
e.g. Visual Studio 2015 or 2017 for Windows and the Windows 8+ SDK or Xcode for macOS yourself.
`mabu` will detect such tools in their expected installation locations.

Similarly, you should be able to use any reasonably cross-platform third-party code with `mabu` (the native build system) 
but we do not provide ready-made builds or ports of such code.

### Prerequisites

This project builds for the device out of the box, using the EGL APIs included in MLSDK, but since EGL is not common for desktops,
it uses alternate APIs on the host side, which you need to fetch.

You will need to install versions of these for your host:

  * glfw 3 -- (OpenGL Framework) -- [http://www.glfw.org/download.html]

     * Windows: install the 64-bit Windows binaries.
     
Take note of glfw's `include` subdirectory, which is needed for `GLFW_INCS` below, and the `lib-vc2015` subdirectory, needed for `GLFW_LIBS` below.

     * macOS: use cmake to build glfw as documented on the site.
        * Create build files with `cmake -DBUILD_SHARED_LIBS` and otherwise follow its instructions.
        * Fix up the generated `libglfw.3.dylib` via `install_name_tool -id libglfw.3.dylib .../path/to/lib/libglfw.3.dylib` (so you don't have to install it)

Take note of glfw's `include` subdirectory, called `GLFW_INCS` below, and the `lib` subdirectory, called `GLFW_LIBS` below.

  * glad -- (GL/GLES/EGL/GLX/WGL Loader-Generator) -- [http://glad.dav1d.de/]

glad is wrapper library that simplifies discovering and loading OpenGL for multiple versions of the specification
on multiple platforms. 

The URL above is a frontend for a generator for the library.

For this example, you only need to generate for GL 4.3, for the core profile in C/C++.

     *  [Generate GL 4.3 headers and loaders][http://glad.dav1d.de/#profile=core&specification=gl&api=gl%3D4.3&api=gles1%3Dnone&api=gles2%3Dnone&api=glsc2%3Dnone&language=c&loader=on]

Download `glad.zip` and extract somewhere, which we call `GLAD_ROOT` below.

Then, generate the platform-specific files:

     *  [Windows support (wgl)][http://glad.dav1d.de/#specification=wgl&api=wgl%3D1.0&extensions=WGL_3DFX_multisample&extensions=WGL_3DL_stereo_control&extensions=WGL_AMD_gpu_association&extensions=WGL_ARB_buffer_region&extensions=WGL_ARB_context_flush_control&extensions=WGL_ARB_create_context&extensions=WGL_ARB_create_context_no_error&extensions=WGL_ARB_create_context_profile&extensions=WGL_ARB_create_context_robustness&extensions=WGL_ARB_extensions_string&extensions=WGL_ARB_framebuffer_sRGB&extensions=WGL_ARB_make_current_read&extensions=WGL_ARB_multisample&extensions=WGL_ARB_pbuffer&extensions=WGL_ARB_pixel_format&extensions=WGL_ARB_pixel_format_float&extensions=WGL_ARB_render_texture&extensions=WGL_ARB_robustness_application_isolation&extensions=WGL_ARB_robustness_share_group_isolation&extensions=WGL_ATI_pixel_format_float&extensions=WGL_EXT_colorspace&extensions=WGL_EXT_create_context_es2_profile&extensions=WGL_EXT_create_context_es_profile&extensions=WGL_EXT_depth_float&extensions=WGL_EXT_display_color_table&extensions=WGL_EXT_extensions_string&extensions=WGL_EXT_framebuffer_sRGB&extensions=WGL_EXT_make_current_read&extensions=WGL_EXT_multisample&extensions=WGL_EXT_pbuffer&extensions=WGL_EXT_pixel_format&extensions=WGL_EXT_pixel_format_packed_float&extensions=WGL_EXT_swap_control&extensions=WGL_EXT_swap_control_tear&extensions=WGL_I3D_digital_video_control&extensions=WGL_I3D_gamma&extensions=WGL_I3D_genlock&extensions=WGL_I3D_image_buffer&extensions=WGL_I3D_swap_frame_lock&extensions=WGL_I3D_swap_frame_usage&extensions=WGL_NV_DX_interop&extensions=WGL_NV_DX_interop2&extensions=WGL_NV_copy_image&extensions=WGL_NV_delay_before_swap&extensions=WGL_NV_float_buffer&extensions=WGL_NV_gpu_affinity&extensions=WGL_NV_multisample_coverage&extensions=WGL_NV_present_video&extensions=WGL_NV_render_depth_texture&extensions=WGL_NV_render_texture_rectangle&extensions=WGL_NV_swap_group&extensions=WGL_NV_vertex_array_range&extensions=WGL_NV_video_capture&extensions=WGL_NV_video_output&extensions=WGL_OML_sync_control&language=c&loader=on]
     *  macOS support -- nothing extra needed
     *  [X11 support (glx)][http://glad.dav1d.de/#specification=glx&api=glx%3D1.4&language=c&loader=on]

Again download the generated `glad.zip` and extract on top of `GLAD_ROOT`.

### Project Structure

The project consists of the files:

  * `main.cpp` -- source
  * `glfw.comp` -- mabu component for using GLFW 3 
  * `glad.comp` -- mabu component for using GLAD 
  * `SimpleGlApp.mabu` -- project for building the executable on all platforms
  * `simple_gl_app.package` -- package project for building the device package and host-side layout.

### Building for Host

  * Set up the build environment (`envsetup.bat` or `envsetup.sh` from the MLSDK folder).
  * Either predefine `GLFW_INCS`, `GLFW_LIBS`, and `GLAD_ROOT` as described above, or edit `build.bat` or `build.sh` to match.
  * NOTE: on Windows define `GLFW_LIBS` with *forward slashes* to avoid a mabu bug (symptom: LINK fails to find glfw3dll.lib)
  * Run either `build.bat` or `build.sh` for your system.

(In the way this sample is distributed, it expects you to pass `GLFW_INCS`, `GLFW_LIBS`, and `GLAD_ROOT` as variables on `mabu`'s command line. 
Since that's kind of a hassle, we provide shell scripts to pass these for you.

These variables are only needed because MLSDK does not bundle these components.  In a setup where you have ports of third-party code in a well-known location relative to your sources, you would typically edit `glfw.comp` and `glad.comp` directly to point to these includes, libraries, and sources.  Then you could simply do `mabu SimpleGlApp` to build.)

### Building for Device

All the requisite sources are available in MLSDK for EGL builds.

  * Set up the build environment (`envsetup.bat` or `envsetup.sh` from the MLSDK folder).
  * Build with `mabu -t lumin simple_gl_app.package`.

All the requisite sources are available in MLSDK for EGL builds.  So here it is simply `mabu -t lumin simple_gl_app.package`.

### Running under Virtual Device

Follow the instructions at https://creator.magicleap.com/learn/guides/tools-magic-leap-remote

Start ML Remote and then Start Simulator.

Then launch your application from this directory:

   * Invoke `build_run.bat` or `build_run.sh`

(The canonical way to launch a mabu app is `mabu <someprogram> --invoke`, but this has some limitations.  Also, we need to ensure
GLFW is available on the library path.  This script makes use of `build.bat` or `build.sh` to do that.)

To shut down:

   * Press Ctrl-C in the console to kill `SimpleGlApp`.
   * Terminate the simulator with `VDCLI -S Simulator`.
   * Terminate the Virtual Device Server with `VDCLI -k`.

### Running with Zero Iteration on the device 

Set up the virtual device and zero iteration server first.

From command line:

  * Set up the virtual device environment (`internal\VirtualDevice\mlvdsetup.bat` or `source internal/VirtualDevice/mlvdsetup.sh`).
  * Launch the server (`VDCLI -s`).
  * Launch the Simulator (`VDCLI -R Simulator`).

From the Virtual Device Frontend:

   * Launch `mlvdui.bat` or `mlvdui.sh`.
   * Click `Start` next to Virtual Device Server.
   * Connect your device.  Its device should appear in the Devices list.
   * Click the hamburger icon and `Start Zero Iteration Server`.

Then launch your application from this directory:

   * Invoke `build_run.bat` or `source build_run.sh`.

After a startup delay you should see the pulsing blue and red squares for each eye through the headset.
The display is being generated on your host and is being transferred to the device as if it were running natively.

To shut down:

   * Press Ctrl-C in the console to kill `SimpleGlApp`.
   * Terminate the Virtual Device Server with `VDCLI -k`.

### Running on device

From command line:

   * Invoke `build_run_device.bat` or `build_run_device.sh`.
   * Alternately do `mabu -t lumin --invoke simple_gl_app`.

After a startup delay you should see the pulsing blue and red squares for each eye through the headset.

To shut down:

   * Stop the example program with `mldb terminate -f simple_gl_app`.

