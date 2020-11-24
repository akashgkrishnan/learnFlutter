import 'package:flutter/material.dart';
import '../providers/product.dart';
import '../providers/product_provider.dart';
import 'package:provider/provider.dart';

class EditProductScreen extends StatefulWidget {
  static const routeName = '/edit-product';
  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _imageUrlController = TextEditingController();
  final _form = GlobalKey<FormState>();
  var _editedProduct =
      Product(id: null, title: '', description: '', price: 0, imageUrl: '');

  var _initValues = {
    'title': '',
    'description': '',
    'price': '',
    'imageUrl': '',
  };

  @override
  void dispose() {
    _imageUrlController.dispose();
    super.dispose();
  }

  bool isInit = true;
  @override
  void didChangeDependencies() {
    if (isInit) {
      final productId = ModalRoute.of(context).settings.arguments as String;
      if (productId != null) {
        _editedProduct = Provider.of<Products>(context).findById(productId);
        _initValues = {
          'title': _editedProduct.title,
          'description': _editedProduct.description,
          'price': _editedProduct.price.toString(),
          'imageUrl': '',
        };
        _imageUrlController.text = _editedProduct.imageUrl;
      }
    }
    isInit = false;
    super.didChangeDependencies();
  }

  void _saveForm() {
    final bool isValid = _form.currentState.validate();
    if (!isValid) {
      return;
    }
    _form.currentState.save();

    if (_editedProduct.id != null) {
      Provider.of<Products>(context, listen: false).updateProduct(
        _editedProduct.id, _editedProduct
      );
    } else {
      Provider.of<Products>(context, listen: false).addProduct(
        _editedProduct,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('edit product'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveForm,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'title',
                ),
                initialValue: _initValues['title'],
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'please provide a title';
                  }
                  return null;
                },
                onSaved: (value) {
                  _editedProduct = Product(
                      id: _editedProduct.id,
                      title: value,
                      description: _editedProduct.description,
                      price: _editedProduct.price,
                      imageUrl: _editedProduct.imageUrl);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'price',
                ),
                initialValue: _initValues['price'],
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'please provide a price';
                  }
                  if (double.tryParse(value) == null) {
                    return 'enter a valid price';
                  }
                  if (double.parse(value) <= 0) {
                    return 'price should be more than 0';
                  }
                  return null;
                },
                onSaved: (value) {
                  _editedProduct = Product(
                      id: _editedProduct.id,
                      title: _editedProduct.title,
                      description: _editedProduct.description,
                      price: double.parse(value),
                      imageUrl: _editedProduct.imageUrl);
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'description',
                ),
                initialValue: _initValues['description'],
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'please provide a description';
                  }
                  if (value.length < 10) {
                    return 'make it 10 chars long atlease';
                  }
                  return null;
                },
                onSaved: (value) {
                  _editedProduct = Product(
                      id: _editedProduct.id,
                      title: _editedProduct.title,
                      description: value,
                      price: _editedProduct.price,
                      imageUrl: _editedProduct.imageUrl);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 8, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: _imageUrlController.text.isEmpty
                        ? Text('enter image url')
                        : FittedBox(
                            child: Image.network(
                              _imageUrlController.text,
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: 'image url'),
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.done,
                      controller: _imageUrlController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'please provide a image url';
                        }
                        if (!value.startsWith('http') &&
                            !value.startsWith('https')) {
                          return 'invalid url';
                        }
                        if (!value.endsWith('.png') &&
                            !value.endsWith('.jpeg') &&
                            !value.endsWith('.jpg')) {
                          return 'not an image';
                        }
                        return null;
                      },
                      onEditingComplete: () {
                        setState(() {});
                      },
                      onFieldSubmitted: (_) => _saveForm(),
                      onSaved: (value) {
                        _editedProduct = Product(
                            id: _editedProduct.id,
                            title: _editedProduct.title,
                            description: _editedProduct.description,
                            price: _editedProduct.price,
                            imageUrl: value);
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
