import 'package:angel_site/highlight.dart' as hljs;
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import '../../services/title.dart';

@Component(selector: 'project-home', templateUrl: 'home.html')
class HomeComponent implements OnActivate, OnInit {
  final TitleService _titleService;

  @ViewChild('code')
  ElementRef codeElem;

  HomeComponent(this._titleService);

  @override
  ngOnInit() {
    hljs.highlightBlock(codeElem.nativeElement);
  }

  @override
  routerOnActivate(_, __) {
    _titleService.title = null;
  }
}