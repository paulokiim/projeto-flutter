import 'package:flutter/material.dart';
import 'package:rp_project/routes.dart';

class RoadmapTopicsScreen extends StatelessWidget {
  const RoadmapTopicsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topicos - React Intermediario'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Descricao do roadmap',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Lorem ipsum dolor sit amet. Qui dolores quis a quod pariatur est ipsam voluptas ut porro commodi. Et tenetur recusandae est blanditiis laudantium eum architecto molestiae.' +
                ' Non consequatur numquam vel mollitia labore eum magni reiciendis id velit voluptatem et repellendus pariatur. Qui inventore atque sed sint sunt et quis exercitationem et cupiditate quibusdam?' +
                ' Eum quisquam dolor eos tempora nisi non quae nulla! Ad porro alias qui culpa impedit cum omnis vero. Ut rerum similique quo omnis dicta non officiis modi non pariatur tempora qui consequatur commodi ea velit quidem.' +
                ' Id iusto expedita aut sint corporis ea rerum molestiae ut error ipsum. Et voluptatum vel beatae nulla aut iste facilis.',
          ),
          Text(
            'O que vou aprender neste roadmap',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            'Lorem ipsum dolor sit amet. Qui dolores quis a quod pariatur est ipsam voluptas ut porro commodi. Et tenetur recusandae est blanditiis laudantium eum architecto molestiae.' +
                ' Non consequatur numquam vel mollitia labore eum magni reiciendis id velit voluptatem et repellendus pariatur. Qui inventore atque sed sint sunt et quis exercitationem et cupiditate quibusdam?' +
                ' Eum quisquam dolor eos tempora nisi non quae nulla! Ad porro alias qui culpa impedit cum omnis vero. Ut rerum similique quo omnis dicta non officiis modi non pariatur tempora qui consequatur commodi ea velit quidem.' +
                ' Id iusto expedita aut sint corporis ea rerum molestiae ut error ipsum. Et voluptatum vel beatae nulla aut iste facilis.',
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context)
                .pushNamed(Routes.newCustomRoadmapConfigure),
            child: Text('Continuar'),
          ),
        ],
      ),
    );
  }
}
