'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "8d472e48948d655c4a09dfccb02684d6",
"assets/assets/images/Anna%2520Rudolf.jpeg": "81627862304ccc50e01e11be4be432a7",
"assets/assets/images/CodeMiko.png": "ad502500ecd1c72f759d7252781ee70d",
"assets/assets/images/Cramling.png": "c5c1d8946b7dcb8cf54f60ed77447ec4",
"assets/assets/images/GothamChess.png": "92bf745e7788a6323f055fa6f9761f16",
"assets/assets/images/Hikaru%2520Nakamura.jpeg": "f306e4d2c8dfc54a17029fccbb1eb2a0",
"assets/assets/images/Hikaru.png": "714017116d5cdc5b886635c3cac5cb7c",
"assets/assets/images/Kosteniuk.png": "3f1a9b5eedfb67625fbf0dd86549a9b5",
"assets/assets/images/Lile%2520Koridze.jpeg": "5a560fcb8f34def681f95d7e756afa6d",
"assets/assets/images/solution.png": "1f315aeb729c9fb702a91f320b95ab66",
"assets/assets/images/Vishy.png": "142ba19f5bad258dff32fb4895b6c6ac",
"assets/assets/images/Voyboy.jpeg": "37f6d8f8469a05744d86b4c58d96a623",
"assets/assets/puzzles/1.jpeg": "0cc57dbae6b175236d59ab60ec6f44c7",
"assets/assets/puzzles/1_challenge_female1.mp3": "5d94ae229239a957da329d0bc4879b55",
"assets/assets/puzzles/1_challenge_female2.mp3": "982d90bcf6307cb976b5fcd411ab9157",
"assets/assets/puzzles/1_challenge_male1.mp3": "12c91d4d869b3d0aab1255a05eb135a6",
"assets/assets/puzzles/1_challenge_male2.mp3": "b5796725fefecc289481f71c3336a9f0",
"assets/assets/puzzles/1_solution_female1.mp3": "4032ebeb0725fa8bc4886646b4c33122",
"assets/assets/puzzles/1_solution_female2.mp3": "6ece8c5c09185fd5aa8b6207ce7bca6a",
"assets/assets/puzzles/1_solution_male1.mp3": "ea8ddc43de2bf0d7128b41ca559dc920",
"assets/assets/puzzles/1_solution_male2.mp3": "9759044a07d6d9e764a8dec1b91a6687",
"assets/assets/puzzles/2.jpeg": "771a011a75da4cbf6cd20b657042de8d",
"assets/assets/puzzles/2_challenge_female1.mp3": "8cd77dc97e1a5918dfe246766c989273",
"assets/assets/puzzles/2_challenge_female2.mp3": "0a9c01265cda3fe7634295d138fb90ce",
"assets/assets/puzzles/2_challenge_male1.mp3": "dc4dab938370b5ff92c194209b44436e",
"assets/assets/puzzles/2_challenge_male2.mp3": "5852088375b35ee2d45e5e39f4c57cb5",
"assets/assets/puzzles/2_solution_female1.mp3": "dad9ee8fe6f436c7ab057c264bbf82a1",
"assets/assets/puzzles/2_solution_female2.mp3": "c23f2bfdd10d31c3d651e060761d7942",
"assets/assets/puzzles/2_solution_male1.mp3": "9c20e9c29bd85c679e7c2637565346cc",
"assets/assets/puzzles/2_solution_male2.mp3": "4059b59709a216c708dbeaebf8eb68e1",
"assets/assets/puzzles/3.jpeg": "9e3e2502c63364c1faf4e7bb3b1f21a9",
"assets/assets/puzzles/3_challenge_female1.mp3": "7cd4db29cfa6f498aee833c9b91e2298",
"assets/assets/puzzles/3_challenge_female2.mp3": "9eee0c5c3b46080688e81272c6d06817",
"assets/assets/puzzles/3_challenge_male1.mp3": "3c263e5a9cc5fcbd39ee36569bfdbaef",
"assets/assets/puzzles/3_challenge_male2.mp3": "48fc59242dedc907f7aece3fd076eeae",
"assets/assets/puzzles/3_solution_female1.mp3": "a39f470752020739fb9e22db594b2d06",
"assets/assets/puzzles/3_solution_female2.mp3": "4e5c6b0576c5e560627ca7fbad33c28d",
"assets/assets/puzzles/3_solution_male1.mp3": "a41bdbd91cf5550ce1378c5ec4defb79",
"assets/assets/puzzles/3_solution_male2.mp3": "8271dccbb3157d0c41ae1a8c5960eb08",
"assets/assets/puzzles/4.jpeg": "ebcb61316c00f42e8266c6ff411fca9e",
"assets/assets/puzzles/4_challenge_female1.mp3": "469c4de924d7fa8e011992ed319f682d",
"assets/assets/puzzles/4_challenge_female2.mp3": "c34f49c9b3e57e90fa215ca869f4a4f6",
"assets/assets/puzzles/4_challenge_male1.mp3": "f7c04cdd9f26ac1d927ca077168ad771",
"assets/assets/puzzles/4_challenge_male2.mp3": "ef507c060ba84a225008e833a7ac311a",
"assets/assets/puzzles/4_solution_female1.mp3": "995b3c52af7d48c101bc77a25eb3f797",
"assets/assets/puzzles/4_solution_female2.mp3": "8a168f0e2f9899faa354aa774724aab2",
"assets/assets/puzzles/4_solution_male1.mp3": "6251d26dedecd98a175b4d6d5f925126",
"assets/assets/puzzles/4_solution_male2.mp3": "aea73467789182ef60943fe2356bd56e",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "aebdf16a2b8f39119fc32244aea94443",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "3df27251a02f4e3e209df1f92e609880",
"/": "3df27251a02f4e3e209df1f92e609880",
"main.dart.js": "344205f4481d4a172c538cecbe08d570",
"manifest.json": "d19e0aa3959103b21aab3b3b8834d225",
"version.json": "ae8e8b33b690f239756c14a2052d020b"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
