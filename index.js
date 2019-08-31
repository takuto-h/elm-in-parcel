import './index.scss';
import 'materialize-css';
import { Elm } from './Main.elm';

Elm.Main.init({
  node: document.querySelector('#main')
});

document.addEventListener('DOMContentLoaded', function() {
  const elems = document.querySelectorAll('.modal');
  const options = {};
  const instances = M.Modal.init(elems, options);
});
