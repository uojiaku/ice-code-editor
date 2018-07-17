import 'package:ice_code_editor/ice.dart' as ICE;

main() {
  var ice = new ICE.Editor('#ice');

  ice.content = '''
<body></body>
<script src="https://code3dgames.com/three.js"></script>
<script>
  // This is where stuff in our game will happen:
  var scene = new THREE.Scene();

  // This is what sees the stuff:
  var aspect_ratio = window.innerWidth / window.innerHeight;
  var camera = new THREE.PerspectiveCamera(75, aspect_ratio, 1, 10000);
  camera.position.z = 400;
  scene.add(camera);

  // This will draw what the camera sees onto the screen:
  var renderer = new THREE.CanvasRenderer();
  renderer.setSize(window.innerWidth, window.innerHeight);
  document.body.appendChild(renderer.domElement);

  // ******** START CODING ON THE NEXT LINE ********

  var shape = new THREE.SphereGeometry(100);
  var cover = new THREE.MeshNormalMaterial();
  var ball = new THREE.Mesh(shape, cover);
  scene.add(ball);
  ball.position.set(-250,250,-250);

  var shape = new THREE.CubeGeometry(300, 100, 20);
  var cover = new THREE.MeshNormalMaterial();
  var box = new THREE.Mesh(shape, cover);
  scene.add(box);
  box.position.set(250, 250, -250);

  var shape = new THREE.CylinderGeometry(110, 100, 100);
  var cover = new THREE.MeshNormalMaterial();
  var tube = new THREE.Mesh(shape, cover);
  scene.add(tube);
  tube.position.set(250, -250, -250);

  var shape = new THREE.PlaneGeometry(300, 100);
  var cover = new THREE.MeshNormalMaterial();
  var ground = new THREE.Mesh(shape, cover);
  scene.add(ground);
  ground.position.set(-250, -250, -250);

  var shape = new THREE.TorusGeometry(100, 25, 8, 25);
  var cover = new THREE.MeshNormalMaterial();
  var donut = new THREE.Mesh(shape, cover);
  scene.add(donut);

  // START: spin
  var clock = new THREE.Clock();

  function animate() {
    requestAnimationFrame(animate);

    var t = clock.getElapsedTime();

    ball.rotation.set(t, 2*t, 0);
    box.rotation.set(t, 2*t, 0);
    tube.rotation.set(t, 2*t, 0);
    ground.rotation.set(t, 2*t, 0);
    donut.rotation.set(t, 2*t, 0);

    renderer.render(scene, camera);
  }

  animate();
  // END: spin

  // Now, show what the camera sees on the screen:
  renderer.render(scene, camera);
</script>
''';

}
